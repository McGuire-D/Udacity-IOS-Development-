//
//  ViewController.swift
//  Text-Fields-Challenge-App
//
//  Created by Dustin McGuire on 5/27/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    let zipCode = ZipCodeField()
    let cash = CashTextField()
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textControl: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField1.delegate = self.cash
        self.textField2.delegate = self.zipCode
        self.textField3.delegate = self
        
        self.textControl.setOn(false, animated: false)
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.textControl.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
        
    @IBAction func ButtonEditor(_ sender: AnyObject){
        
        if !(sender as! UISwitch).isOn {
            self.textField3.resignFirstResponder()
        }
    }
    
    
    
    
}
    
        

