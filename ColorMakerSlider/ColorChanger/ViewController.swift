//
//  ViewController.swift
//  ColorChanger
//
//  Created by Dustin McGuire on 5/16/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redController: UISlider!
    @IBOutlet weak var greenController: UISlider!
    @IBOutlet weak var blueController: UISlider!
    @IBOutlet weak var colorView: UIView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func colorChanger(_ sender: AnyObject) {
        
        let r: CGFloat = CGFloat(self.redController.value)
        let g: CGFloat = CGFloat(self.greenController.value)
        let b: CGFloat = CGFloat(self.blueController.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
    }

}

