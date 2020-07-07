//
//  CollectionViewController.swift
//  MemeMePractice
//
//  Created by Dustin McGuire on 7/1/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

private let reuseIdentifier = "CollectionViewCell"

class CollectionViewController: UICollectionViewController {
    
    @IBOutlet weak var flowLayoutMeme: UICollectionViewFlowLayout!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        collectionView?.reloadData()
        navigationController?.isNavigationBarHidden = false
        tabBarController?.tabBar.isHidden = false
    }

    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return (UIApplication.shared.delegate as! AppDelegate).memes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CollectionViewCell
        let meme = (UIApplication.shared.delegate as! AppDelegate).memes[indexPath.row]
        let image = meme.editedImage
        
        cell.editedImageView.image = image
        

        return cell
    }

    // MARK: UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let memeDetail = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        let meme = (UIApplication.shared.delegate as! AppDelegate).memes[indexPath.row]
        memeDetail.detailMeme = meme
        navigationController?.pushViewController(memeDetail, animated: true)
    }

}
