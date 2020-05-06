//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Dustin McGuire on 5/4/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsViewController: UIViewController  {
    
    var audioRecorder: AVAudioRecorder!
    
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
    
//    @IBAction func recordAudio(_ sender: AnyObject) {
//        recordingLabel.text = "Recording in progress"
//        stopRecordButton.isEnabled = true
//        recordButton.isEnabled = false
//
//        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
//        let recordingName = "recordedVoice.wav"
//        let pathArray = [dirPath, recordingName]
//        let filePath = URL(string: pathArray.joined(separator: "/"))
//
//        let session = AVAudioSession.sharedInstance()
//        try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.default, options: AVAudioSession.CategoryOptions.defaultToSpeaker)
//
//        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
//        audioRecorder.isMeteringEnabled = true
//        audioRecorder.prepareToRecord()
//        audioRecorder.record()
//    }
    
    @IBAction func recordAudio(_ sender: UIButton) {
                recordingLabel.text = "Recording in progress"
                stopRecordButton.isEnabled = true
                recordButton.isEnabled = false
        
                let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
                let recordingName = "recordedVoice.wav"
                let pathArray = [dirPath, recordingName]
                let filePath = URL(string: pathArray.joined(separator: "/"))
        
                let session = AVAudioSession.sharedInstance()
                try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.default, options: AVAudioSession.CategoryOptions.defaultToSpeaker)
        
                try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
                audioRecorder.isMeteringEnabled = true
                audioRecorder.prepareToRecord()
                audioRecorder.record()
    }
    
    
    @IBAction func stopRecording(_ sender: Any) {
        recordButton.isEnabled = true
        stopRecordButton.isEnabled = false
        recordingLabel.text = "Tap to Record"
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
        }

}
