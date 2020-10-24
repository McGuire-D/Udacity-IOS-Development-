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
    // Activity indicator extension
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
    //starting activity
    public func startIndicatingActivity() {
        DispatchQueue.main.async {
            self.view.addSubview(self.indicator)
            self.indicator.startAnimating()
            //UIApplication.shared.beginIgnoringInteractionEvents() // if desired
        }
    }
    //stopping activity
    public func stopIndicatingActivity() {
        DispatchQueue.main.async {
            self.indicator.stopAnimating()
            //UIApplication.shared.endIgnoringInteractionEvents()
        }
    }
    // MARK: NSKeydArchiverUnarchiver
    func saveObject(fileName: String, object: Any) {
        
        let filePath = self.getDirectoryPath().appendingPathComponent(fileName)
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: object, requiringSecureCoding: false)
            try data.write(to: filePath)
        } catch {
            print("error is: \(error.localizedDescription)")
            
        }
    }
    func alertControl(title: String, message: String) -> Void {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    func getObject(fileName: String) -> Any? {
        
        let filePath = self.getDirectoryPath().appendingPathComponent(fileName)
        do {
            let data = try Data(contentsOf: filePath)
            let object = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data)
            return object
        } catch {
            print("error is: \(error.localizedDescription)")
            alertControl(title: "Error", message: "We had an issue loading the file path")
        }
        return nil
    }
    
    // MARK: Path Helpers
    func getDirectoryPath() -> URL {
        let arrayPaths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return arrayPaths[0]
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


