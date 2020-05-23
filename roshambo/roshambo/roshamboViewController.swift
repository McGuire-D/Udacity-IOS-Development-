//
//  roshambo.swift
//  roshambo
//
//  Created by Dustin McGuire on 5/22/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

// enum for choices
enum Shape: String {
    case Rock = "Rock"
    case Paper = "Paper"
    case Scissors = "Scissors"
    
    //Random generating shape function
    static func randomShape() -> Shape {
        let shapes = ["Rock", "Paper", "Scissors"]
        let randomChoice = Int(arc4random_uniform(3))
        return Shape(rawValue: shapes[randomChoice])!
    }
}

// class RoshamboViewControler


class RoshamboViewController: UIViewController {
    
}
