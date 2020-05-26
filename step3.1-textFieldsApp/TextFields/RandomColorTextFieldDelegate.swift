//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Dustin McGuire on 5/26/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {

//    func randomColor() -> UIColor {
//        // @TODO: return a random color
//    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // @TODO: Set the color of your text here!
        return true
    }

}
