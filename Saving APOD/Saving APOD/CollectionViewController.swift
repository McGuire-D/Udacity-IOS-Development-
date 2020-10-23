//
//  CollectionViewController.swift
//  Saving APOD
//
//  Created by Dustin McGuire on 10/20/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class FavoritePictures: NSObject, NSCoding {
    let data: Data?
    
    func encode(with coder: NSCoder) {
        coder.encode(self.data, forKey: "data")
    }
    
    required init(coder: NSCoder) {
        self.data = coder.decodeObject(forKey: "data") as? Data
    }
    
    init(data: Data) {
        self.data = data
    }
}

class CollectionViewController: UICollectionViewController {
    
    var pictures: [FavoritePictures] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        pictures = self.getObject(fileName: "FavoriteList") as? [FavoritePictures] ?? []
        
        self.collectionView.delegate = self
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictures.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "favoriteCell", for: indexPath) as! FavoriteCollectionCell

        if let image = convertPicture(from: pictures[indexPath.row].data!) {
            cell.imageView.image = image
        }
        return cell
    }
    
    func convertPicture(from data: Data) -> UIImage? {
        let image = UIImage(data: data)
        return image
    }

}
