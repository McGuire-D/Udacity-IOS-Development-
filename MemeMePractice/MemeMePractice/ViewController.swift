//
//  ViewController.swift
//  MemeMePractice
//
//  Created by Dustin McGuire on 6/1/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = imagePickerDelegate()
    
    @IBOutlet weak var imagePickerView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func pickAnImage(_ sender: Any) {
        
        let pickerController = UIImagePickerController()
        imagePicker = self
        present(pickerController, animated: true, completion: nil)
    }
    
}

