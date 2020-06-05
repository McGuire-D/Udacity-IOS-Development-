//
//  ViewController.swift
//  MemeMePractice
//
//  Created by Dustin McGuire on 6/1/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

extension UIViewController {
    public func addActionSheetForiPad(actionSheet: UIAlertController) {
        if let popoverPresentationController = actionSheet.popoverPresentationController {
            popoverPresentationController.sourceView = self.view
            popoverPresentationController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.maxY, width: 0, height: 0)
            popoverPresentationController.permittedArrowDirections = []
        }
    }
}

extension UIViewController {
    public func addActivityViewControllerForiPad(activityController: UIActivityViewController) {
        if let popoverPresentationController = activityController.popoverPresentationController {
            popoverPresentationController.sourceView = self.view
            popoverPresentationController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.maxY, width: 0, height: 0)
            popoverPresentationController.permittedArrowDirections = []
        }
    }
}

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    
    
    @IBOutlet weak var toodleBar: UIToolbar!
    @IBOutlet weak var topText: UITextField!
    @IBOutlet weak var bottomText: UITextField!
    @IBOutlet weak var shareButton: UIBarButtonItem!
    @IBOutlet weak var cancel: UIBarButtonItem!
    
    var mainFont: UIFont?
    
    let memeTextAttributes: [NSAttributedString.Key: Any] = [
          .strokeColor: UIColor.purple,
          .font: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
          .strokeWidth: -4,
          .foregroundColor: UIColor.white,
          ]
    
    @IBOutlet weak var imagePickerView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        toodleBar.isHidden = false
        topText.defaultTextAttributes = memeTextAttributes
        bottomText.defaultTextAttributes = memeTextAttributes
        topText.delegate = self
        bottomText.delegate = self
        topText.textAlignment = .center
        bottomText.textAlignment = .center
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        topText.backgroundColor = .clear
        bottomText.backgroundColor = .clear
        topText.borderStyle = .none
        bottomText.borderStyle = .none
        shareButton.isEnabled = false
    }
  
    @objc func keyboardWillHide(notification: NSNotification){
        print("Keyboard hidden")
        view.frame.origin.y = 0
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = nil
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    @objc func keyboardWillShow(_ notification:Notification) {
        view.frame.origin.y -= getKeyboardHeight(notification)
        print("Keyboard Will Show")
    }
    
    func getKeyboardHeight(_ notification:Notification) -> CGFloat {
        
        let userInfo = notification.userInfo
        let keyboardSize = userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue
        return keyboardSize.cgRectValue.height
    }
    
    @IBAction func Camera(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            present(imagePicker, animated: true, completion: nil)
        } else {
            let AC = UIAlertController(title: "NO CAMERA FOUND", message: "Buy a better phone", preferredStyle: .alert)
            AC.addAction(UIAlertAction(title: "OK", style: .cancel))
            present(AC, animated: true)
            
        }
    }
    
    @IBAction func pickAnImage(_ sender: Any) {
        
        let pickerController = UIImagePickerController()
        pickerController.allowsEditing = true
        pickerController.delegate = self
        pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true, completion: nil)
        
    }
    @IBAction func share(_ sender: Any) {
        let image = generateMemedImage()
        let ac = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        ac.addActivityViewControllerForiPad(activityController: ac)
        present(ac, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.editedImage] as? UIImage {
            imagePickerView.image = image
            shareButton.isEnabled = true
        }
        imagePickerView.setNeedsDisplay()
        dismiss(animated: true)

    }
    
    func save() {
        _ = Meme(topText: topText.text!, bottomText: bottomText.text!, originalImage: imagePickerView.image!, editedImage: generateMemedImage())
    }
    
    func generateMemedImage() -> UIImage{
        
    
        // TODO: Hide toolbar and navbar
        
        // Render view to an Image
        UIGraphicsBeginImageContext(self.view.frame.size)
        view.drawHierarchy(in: self.view.frame, afterScreenUpdates: true)
        let editedImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        //TODO: Show tollbar and navbar
        
        return editedImage
    }
    
}
// struct for meme image
struct Meme {
    var topText: String
    var bottomText: String
    var originalImage: UIImage
    var editedImage: UIImage
}
