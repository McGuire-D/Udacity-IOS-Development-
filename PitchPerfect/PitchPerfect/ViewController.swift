//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Dustin McGuire on 5/4/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var stopRecordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewWillAppear called")
    }
    
    @IBAction func RecordAudio(_ sender: Any) {
        print("Record button was pressed")
        recordingLabel.text="Recording in Progress"
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        print("Button pressed")
    }
}

