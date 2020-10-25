//
//  CollectionViewController.swift
//  Saving APOD
//
//  Created by Dustin McGuire on 10/20/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import CoreData
import UIKit

private let reuseIdentifier = "Cell"

// Class for collection view
class CollectionViewController: UICollectionViewController {
    
    var pictures: [Apod] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pictures = DataBaseHelper.shareInstance.fetchImage()
        
        self.collectionView.delegate = self
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictures.count
    }
//check for cell data
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "favoriteCell", for: indexPath) as! FavoriteCollectionCell

        if let image = UIImage(data: pictures[indexPath.row].photo!) {
            cell.imageView.image = image
        }
        return cell
    }
    
    func convertPicture(from data: Data) -> UIImage? {
        let image = UIImage(data: data)
        return image
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let apod = pictures[indexPath.row]
        self.alertControl(title: apod.date ?? "Date unknown", message: apod.info ?? "No information available")
    }

}
