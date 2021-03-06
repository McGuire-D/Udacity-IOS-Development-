//
//  ResultsViewController.swift
//  Roshambo
//

import UIKit

// MARK: - Shape: String

// The enum "Shape" represents a play or move
enum Shape: String {
    case Rock = "Rock"
    case Paper = "Paper"
    case Scissors = "Scissors"

    // This function randomly generates an opponent's play
    static func randomShape() -> Shape {
        let shapes = ["Rock", "Paper", "Scissors"]
        let randomChoice = Int(arc4random_uniform(3))
        return Shape(rawValue: shapes[randomChoice])!
    }
}

// MARK: - ResultsViewController: UIViewController

class ResultsViewController: UIViewController {
    
    // adding history
    
    var history = [RPSMatch]()
    
    // MARK: Outlets

    @IBOutlet private weak var resultImage: UIImageView!
    @IBOutlet private weak var resultLabel: UILabel!

    // MARK: Properties

    // When the ResultsViewController is initialized a userChoice is passed in and an opponent's play is generated.
    var userChoice: Shape!
    private let opponentChoice: Shape = Shape.randomShape()

    // MARK: Life Cycle

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        displayResult()
    }
    
    // MARK: UI

    // Results and image function
    private func displayResult() {
        // Ideally, most of this would be handled by a model.
        var imageName: String
        var text: String
        let matchup = "\(userChoice.rawValue) vs. \(opponentChoice.rawValue)"

        // Why is an exclamation point necessary? :)
        switch (userChoice!, opponentChoice) {
        case let (user, opponent) where user == opponent:
            text = "\(matchup): it's a tie!"
            imageName = "tie"
        case (.Rock, .Scissors), (.Paper, .Rock), (.Scissors, .Paper):
            text = "You win with \(matchup)!"
            imageName = "\(userChoice.rawValue)-\(opponentChoice.rawValue)"
        default:
            text = "You lose with \(matchup) :(."
            imageName = "\(opponentChoice.rawValue)-\(userChoice.rawValue)"
        }

        imageName = imageName.lowercased()
        resultImage.image = UIImage(named: imageName)
        resultLabel.text = text
    }
    
    func throwDown(_ playersMove: RPS) {
        let computersMove = RPS()
        let match = RPSMatch(p1: playersMove, p2: computersMove)
        
        // adding to history
        history.append(match)
        
        // getting Storyboard and ResultViewController
        let storyboard = UIStoryboard (name: "Main", bundle: nil)
        let resultVC = storyboard.instantiateInitialViewController(withIdentifier: "ResultViewController") as! ResultsViewController
        
        // tell the match to ResultsViewController
        resultVC.match = match
        
        self.present(resultVC, animated: true, completion: nil)
        
        
    }

    // MARK: Actions
    
    @IBAction private func playAgain() {
        dismiss(animated: true, completion: nil)
    }
}
