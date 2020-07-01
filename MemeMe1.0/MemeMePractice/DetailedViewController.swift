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
    
    var detailMeme : MemeStruct! = nil
    
    override func viewWillAppear(_ animated: Bool) {
        print(detailMeme.EditedImage)
        super.viewWillAppear(true)
        imageDetail.image = detailMeme.EditedImage
        tabBarController?.tabBar.isHidden = true
    }

}
