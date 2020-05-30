//
//  ZipCodeField.swift
//  Text-Fields-Challenge-App
//
//  Created by Dustin McGuire on 5/27/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeField: NSObject, UITextFieldDelegate {
    
     func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            
            var newText = textField.text! as NSString
            newText = newText.replacingCharacters(in: range, with: string) as NSString
            
            return newText.length <= 5
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            
            return true;
        }
    }


