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

/*
 Standard Operators in Swift
 Below, we have created a table of some of the standard operators in Swift. Don’t worry if you do not understand the meaning of each operator yet because we will incorporate them more and more.

 Here is an ordering of the precedence groups listed below from highest to lowest:

 Multiplication
 Addition
 Assignment
 Operators with a higher precedence group will be calculated before operators with a lower precedence group.

 Operator    Name    Description    Precedence Group    Associativity    Type
 *    Multiply    Performs basic multiplication    Multiplication    Left    Binary, Infix
 /    Divide    Performs basic division (there are special rules governing division of integers and decimal values)    Multiplication    Left    Binary, Infix
 %    Remainder    Performs basic division and returns the remainder that is left over    Multiplication    Left    Binary, Infix
 +    Add    Performs basic addition    Addition    Left    Binary, Infix
 -    Subtract    Performs basic subtraction    Addition    Left    Binary, Infix
 =    Assignment    Assigns a value to a variable    Assignment    Right    Binary, Infix
 +=    Add and assign    Performs + and then assigns the result to a variable    Assignment    Right    Binary, Infix
 -=    Subtract and assign    Performs - and then assigns the result to a variable    Assignment    Right    Binary, Infix
 *=    Multiply and assign    Performs * and then assigns the result to a variable    Assignment    Right    Binary, Infix
 /=    Divide and assign    Performs / and then assigns the result to a variable    Assignment    Right    Binary, Infix
 %=    Remainder and assign    Performs % and then assigns the result to a variable    Assignment    Right    Binary, Infix
 */
