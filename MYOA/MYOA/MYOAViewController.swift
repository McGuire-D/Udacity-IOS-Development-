//
//  MYOAViewController.swift
//  MYOA
//
//  Created by Dustin McGuire on 6/15/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit
import Foundation

class MYOAViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Start Over", style: .plain, target: self, action: #selector(startOver))
    }

    @objc func startOver() {
        if let navigationController = navigationController{ navigationController.popToRootViewController(animated: true)}
    }
    
    deinit {
        print("View Controller Deallocated")
    }
}
