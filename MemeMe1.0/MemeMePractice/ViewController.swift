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
        // added extensions for ipad support
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
    @IBOutlet weak var topToolBar: UIToolbar!
    
    var mainFont: UIFont?
    let memeTextAttributes: [NSAttributedString.Key: Any] = [
        // text attributes
          .strokeColor: UIColor.purple,
          .font: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
          .strokeWidth: -4,
          .foregroundColor: UIColor.white,
          ]
    
    @IBOutlet weak var imagePickerView: UIImageView!
    override func viewDidLoad() {
        //viewDidLoad setting function calls for app
        super.viewDidLoad()
        topToolBar.isHidden = true
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
        // keyboard height when dismissed
        print("Keyboard hidden")
        view.frame.origin.y = 0
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        // making text field blank when selected for editing
        textField.text = nil
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    @objc func keyboardWillShow(_ notification:Notification) {
        //keyboard height when shown
        view.frame.origin.y -= getKeyboardHeight(notification)
        print("Keyboard Will Show")
    }
    
    func getKeyboardHeight(_ notification:Notification) -> CGFloat {
        // assigning keyboard height
        let userInfo = notification.userInfo
        let keyboardSize = userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue
        return keyboardSize.cgRectValue.height
    }
    
    @IBAction func Camera(_ sender: Any) {
        // action for calling device camera
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
        //allows image to be saved or shared
        let image = generateMemedImage()
        let ac = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        ac.addActivityViewControllerForiPad(activityController: ac)
        present(ac, animated: true)
    }
    
    @IBAction func cancel(_ sender: Any) {
        //cancel button to refresh memeMe
        imagePickerView.image = nil
        topText.text = "Top"
        bottomText.text = "Bottom"
        topToolBar.isHidden = true
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.editedImage] as? UIImage {
            imagePickerView.image = image
            shareButton.isEnabled = true
        }
        imagePickerView.setNeedsDisplay()
        topToolBar.isHidden = false
        dismiss(animated: true)
        
    }
    
    func save() {
        _ = Meme(topText: topText.text!, bottomText: bottomText.text!, originalImage: imagePickerView.image!, editedImage: generateMemedImage())
    }
    
    func generateMemedImage() -> UIImage{
        
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        view.drawHierarchy(in: self.view.frame, afterScreenUpdates: true)
        let editedImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
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
