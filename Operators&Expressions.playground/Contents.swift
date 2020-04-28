import UIKit

//: ## Operators
var gamePoints = 1000
var numberOfLives = 3
var numberOfDeaths = 0

let pointsPerLife = 100
let pointsPerDeath = 300
let randomBonus = 20

// Note: I made randomBonus always return 20.

var totalPoints = gamePoints + (numberOfLives * pointsPerLife) - (numberOfDeaths * pointsPerDeath) + randomBonus

numberOfLives -= 1
numberOfDeaths += 1

var lifeBonus = numberOfLives * pointsPerLife
var deathBonus = numberOfDeaths * pointsPerDeath
var newTotalPoints = gamePoints + lifeBonus - deathBonus + randomBonus

print(totalPoints)
print(newTotalPoints)
//: [Next](@next)|
