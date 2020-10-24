//
//  UIActivityIndicatorView+Extension.swift
//  Saving APOD
//
//  Created by Dustin McGuire on 10/20/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import Foundation
import UIKit

// Indicator view extension for activity view specs
extension UIActivityIndicatorView {
    public static func customIndicator(at center: CGPoint) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
        indicator.layer.cornerRadius = 10
        indicator.center = center
        indicator.hidesWhenStopped = true
        indicator.style = UIActivityIndicatorView.Style.large
        indicator.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 0.5)
        return indicator
    }
}
