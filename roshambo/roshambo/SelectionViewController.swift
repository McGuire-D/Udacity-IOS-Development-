//
//  ViewController.swift
//  roshambo
//
//  Created by Dustin McGuire on 5/22/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

// MARK: - ChoiceViewController: UIViewController

class ChoiceViewController: UIViewController {
    
    // MARK: Programming UI button

    @IBAction private func playRock(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RoshamboViewController") as! RoshamboViewController
        vc.userChoice = getUserShape(sender)
        present(vc, animated: true, completion: nil)
    }

    // MARK: Code based Segue

    @IBAction private func playPaper(_ sender: UIButton) {
        performSegue(withIdentifier: "play", sender: sender)
    }

    // MARK: Segue

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "play" {
            let vc = segue.destination as! RoshamboViewController
            vc.userChoice = getUserShape(sender as! UIButton)
        }
    }

    // MARK: Utilities

    // The enum "Shape" represents a play or move
    private func getUserShape(_ sender: UIButton) -> Shape {
        // Titles are set to one of: Rock, Paper, or Scissors
        let shape = sender.title(for: UIControl.State())!
        return Shape(rawValue: shape)!
    }
}
