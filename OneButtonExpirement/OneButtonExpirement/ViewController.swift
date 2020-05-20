//
//  ViewController.swift
//  OneButtonExpirement
//
//  Created by Dustin McGuire on 5/18/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

class ViewController : UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var myImage: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
    }
// camera action function
    @IBAction func cameraButton(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera;
            imagePicker.allowsEditing = false
            present(imagePicker, animated: true, completion: nil)
        } 
    }
// library action function to access phone library
    @IBAction func libraryButton(_sender: Any)  {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary;
            imagePicker.allowsEditing = false
            present(imagePicker, animated: true, completion: nil)
        let controller = UIAlertController()
        present(controller, animated: true, completion: nil)
        }
    }

// test for Alert button
    @IBAction func experiment() {
        let controller = UIAlertController()
        
        controller.title = "Test Alert"
        controller.message = "This is a test"
        
        let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { action in
            self.dismiss(animated: true, completion: nil)
        }
        
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
        
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            myImage.image = image
            
            
        }
        dismiss(animated: true, completion: nil)
        }

}
