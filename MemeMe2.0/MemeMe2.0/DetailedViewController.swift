//
//  DetailedViewController.swift
//  MemeMePractice
//
//  Created by Dustin McGuire on 7/1/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageDetail: UIImageView!
    
    var detailMeme: Meme?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard detailMeme != nil else { return }
        print(detailMeme!.editedImage)
        imageDetail.image = detailMeme!.editedImage
        tabBarController?.tabBar.isHidden = true
    }

}
