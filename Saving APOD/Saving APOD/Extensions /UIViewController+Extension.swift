//
//  UIViewController+Extension.swift
//  Saving APOD
//
//  Created by Dustin McGuire on 10/20/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    // see ObjectAssociation<T> class below
    private static let association = ObjectAssociation<UIActivityIndicatorView>()
    
    var indicator: UIActivityIndicatorView {
        set { UIViewController.association[self] = newValue }
        get {
            if let indicator = UIViewController.association[self] {
                return indicator
            } else {
                UIViewController.association[self] = UIActivityIndicatorView.customIndicator(at: self.view.center)
                return UIViewController.association[self]!
            }
        }
    }
    public func startIndicatingActivity() {
        DispatchQueue.main.async {
            self.view.addSubview(self.indicator)
            self.indicator.startAnimating()
            //UIApplication.shared.beginIgnoringInteractionEvents() // if desired
        }
    }
    public func stopIndicatingActivity() {
        DispatchQueue.main.async {
            self.indicator.stopAnimating()
            //UIApplication.shared.endIgnoringInteractionEvents()
        }
    }
}

public final class ObjectAssociation<T: AnyObject> {

    private let policy: objc_AssociationPolicy

    /// - Parameter policy: An association policy that will be used when linking objects.
    public init(policy: objc_AssociationPolicy = .OBJC_ASSOCIATION_RETAIN_NONATOMIC) {

        self.policy = policy
    }

    /// Accesses associated object.
    /// - Parameter index: An object whose associated object is to be accessed.
    public subscript(index: AnyObject) -> T? {

        get { return objc_getAssociatedObject(index, Unmanaged.passUnretained(self).toOpaque()) as! T? }
        set { objc_setAssociatedObject(index, Unmanaged.passUnretained(self).toOpaque(), newValue, policy) }
    }
}
