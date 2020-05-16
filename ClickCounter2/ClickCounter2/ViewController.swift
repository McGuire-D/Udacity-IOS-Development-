//
//  ViewController.swift
//  ClickCounter2
//
//  Created by Dustin McGuire on 5/15/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @ IBOutlet var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @ IBAction func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }


}


