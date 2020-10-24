//
//  datePickerViewController.swift
//  Saving APOD
//
//  Created by Dustin McGuire on 9/16/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import Foundation
import UIKit

protocol DatePickerViewController: class {
    func dateChanged(date: Date)
    
}
// This class pulls the picker wheel
class datePickerViewController: UIViewController {
    @IBOutlet weak var APODdate: UIDatePicker!
    weak var delegate: DatePickerViewController?
    var returnDate : Date? = Date.init()
    
    @IBAction func APODChanged(_ sender: Any) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        

        returnDate = APODdate.date
    }
    
    @IBAction func OkAPODDatePicker(_ sender: Any) {
        delegate?.dateChanged(date: returnDate!)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelAPODDatePicker(_ sender: Any) {
        dismiss(animated: true, completion: nil) 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APODdate.maximumDate = Date()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
