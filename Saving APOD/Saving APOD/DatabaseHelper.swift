//
//  DatabaseHelper.swift
//  Saving APOD
//
//  Created by Dustin McGuire on 10/25/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit
import CoreData

class DataBaseHelper {
    
    static let shareInstance = DataBaseHelper()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func saveImage(data: Data, photoInfo: PhotoInfoModel) {
        let imageInstance = Apod(context: context)
        imageInstance.photo = data
        imageInstance.date = photoInfo.date
        imageInstance.info = "\(photoInfo.title)\n\n\(photoInfo.description)"

        do {
            try context.save()
            print("Image is saved")
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchImage() -> [Apod] {
        var fetchingImage = [Apod]()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Apod")
        
        do {
            fetchingImage = try context.fetch(fetchRequest) as! [Apod]
        } catch {
            print("Error while fetching the image")
        }
        
        return fetchingImage
    }
}
