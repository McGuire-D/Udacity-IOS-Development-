//
//  playSoundsViewController.swift
//  PitchPerfect
//
//  Created by Dustin McGuire on 5/6/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit
import AVFoundation

class playSoundsViewController: UIViewController {
    
    // MARK: Outlets

    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordAudioURL: URL!
    var recordedAudioURL:URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!

    enum ButtonType: Int {
        case slow = 0, fast, chipmunk, vader, echo, reverb
    }
    

    @IBAction func playSoundForButton(_ sender: UIButton) {
        let tag = sender.tag
        
        switch tag {
        case 0:
            playSound(rate: 0.5)
        case 1:
            playSound(rate: 1.5)
        case 2:
            playSound(pitch: 1000)
        case 3:
            playSound(pitch: -1000)
        case 4:
            playSound(echo: true)
        case 5:
            playSound(reverb: true)
            
        default:
            playSound(rate: 1)
        }
        
    configureUI(.playing)
        
   
    }
    
    
    @IBAction func stopButtonPressed(_ sender: AnyObject) {
        stopAudio()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //setupAudio()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
