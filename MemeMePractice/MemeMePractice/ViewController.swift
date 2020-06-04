//
//  ViewController.swift
//  MemeMePractice
//
//  Created by Dustin McGuire on 6/1/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    
    
    @IBOutlet weak var toodleBar: UIToolbar!
    @IBOutlet weak var topText: UITextField!
    @IBOutlet weak var bottomText: UITextField!
    
    var mainFont: UIFont?
    
    let memeTextAttributes: [NSAttributedString.Key: Any] = [
          .strokeColor: UIColor.purple,
          .foregroundColor: UIColor.white,
          .font: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
          .strokeWidth: 2,
          ]
    
    @IBOutlet weak var imagePickerView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        toodleBar.isHidden = false
        topText.textAlignment = .center
        bottomText.textAlignment = .center
        topText.defaultTextAttributes = memeTextAttributes
        bottomText.defaultTextAttributes = memeTextAttributes
        topText.delegate = self
        bottomText.delegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        topText.backgroundColor = .systemPink
        bottomText.backgroundColor = .systemPink
    }
    /*@objc func keyboardWillShow(notification: NSNotification){
        print("Keyboard Will Show")
    }
 */
    @objc func keyboardWillHide(notification: NSNotification){
        print("Keyboard hidden")
        view.frame.origin.y = 0
    }
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        subscribeToKeyboardNotifications()
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        unSubscribeToKeyboardNotifications()
//    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = nil
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
   /* func subscribeToKeyboardNotifications () {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    func unSubscribeToKeyboardNotifications () {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    */
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
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.editedImage] as? UIImage {
            imagePickerView.image = image
        }
        imagePickerView.setNeedsDisplay()
        dismiss(animated: true)

    }
    
}
