//
//  ViewController.swift
//  Click Counter
//
//  Created by Dustin McGuire on 5/14/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label : UILabel!
    var label2 : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // label 2 testing adding my own label
        let label2 = UILabel()
        label2.frame = CGRect(x: 150, y: 90, width: 60, height: 60)
        label2.text = "0"
        view.addSubview(label2)
        self.label2 = label2
        
        //button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 100, height: 60)
        button.setTitle("Count Up", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        //button 2 practice
        let button2 = UIButton()
        button2.frame = CGRect(x: 150, y: 220, width: 100, height: 60)
        button2.setTitle("Count Down", for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button2)
        
        button2.addTarget(self, action: #selector(ViewController.countDown), for: UIControl.Event.touchUpInside)
        
    }
    // function to count up by 1
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    // function to count down by 1
    @objc func countDown() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
            
    }
    

}

