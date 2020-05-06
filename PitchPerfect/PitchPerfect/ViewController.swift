//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Dustin McGuire on 5/4/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordButton.isEnabled = false
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewWillAppear called")
    }
    
    @IBAction func RecordAudio(_ sender: AnyObject) {
        recordingLabel.text = "Recording in progress"
        stopRecordButton.isEnabled = true
        recordButton.isEnabled = false
        
    }
    
    @IBAction func stopRecording(_ sender: AnyObject) {
        recordButton.isEnabled = true
        stopRecordButton.isEnabled = false
        recordingLabel.text = "Tap to Record"
    }
}

