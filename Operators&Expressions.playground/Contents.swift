import UIKit

//: ## Operators
var gamePoints = 1000
var numberOfLives = 3
var numberOfDeaths = 0

let pointsPerLife = 100
let pointsPerDeath = 300
// Random Bonus was not explained in the lesson but it bothered me to have it as a set number.
// This is how to set a random integer in swift.
let randomBonus = Int.random(in: 0...100)

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


// Operator practice

5+3

5-3

5-2.5

5*3

5 / 3

5 * 3.0

5 / 3.0


var five = 5
var three = 3
var zero = 0

// let result = five/zero

//Mod function that leaves a remainder, also an easy wat to find even or odd numbers
10 % 2
5 % 5
6 % 5
7 % 5
8 % 5

// any number with a remainder of zero mod 2 will be even
18 % 2


var totalPayroll = 0

var billySalary = 6500000
var ericSalary = 5500000
var drewSalary = 500000

//Multiple ways of calculating total salary

//totalPayroll =  billySalary + ericSalary + drewSalary

/*
totalPayroll += billySalary
totalPayroll += ericSalary
totalPayroll += drewSalary
*/

totalPayroll -= billySalary
totalPayroll -= ericSalary
totalPayroll -= drewSalary


/*
 Prefix Expressions
 Prefix expressions combine an optional prefix operator with an expression—typically a primary expression (variable):

 var counter = 3
 var negativeCounter = -counter
 Here, -counter is a prefix expression combining the a negative sign (called unary minus operator in Swift) with the counter variable.
 



 Binary Expressions
 Binary expressions combine an infix binary operator with a left-hand expression and a right-hand expression. Binary expressions have the following form: leftHandSide operator rightHandSide.


 This binary expression evaluates to 2 because 7 divided by 5 has a remainder of 2.
 
 
 Postfix Expressions
 Postfix expressions are formed by applying a postfix operator to an expression. Syntactically, every primary expression is also a postfix expression.

 The following expression uses the ! operator which we haven't seen before. Don't worry, we will explain this operator later when we talk about Optionals. We are just mentioning it here for completeness.

 var optionalNumber: Int? = 3
 optionalNumber!
 


 Operators With Strings
 As you've just seen, operators can be used with a variety of numeric values. Additionally, Swift strings also support the use of operators. For example, adding two strings together creates a new string containing both of the original strings.

 var hello = "Hello"
 var world = "world!"
 let greeting = hello + " " + world
 And we can also use the compound assignment operator += to append to an existing string.

 hello += "!"
 */

