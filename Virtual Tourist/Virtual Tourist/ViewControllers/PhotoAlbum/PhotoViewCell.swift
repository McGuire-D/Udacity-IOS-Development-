//
//  PhotoViewCell.swift
//  Virtual Tourist
//
//  Created by Dustin McGuire on 9/1/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit
import CoreData

class PhotoViewCell: UICollectionViewCell {
    
   
    @IBOutlet weak var photoImageView: UIImageView!

    static let reuseIdentifier = "PhotoViewCell"
    

    func setPhotoImageView(imageView: UIImage, sizeFit: Bool) {
        photoImageView.image = imageView
        if sizeFit == true {
            photoImageView.sizeToFit()
        }
    }

}
