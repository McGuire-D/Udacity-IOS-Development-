import UIKit

//: ## If Statements
//: Some functions to execute under different conditions
//: Example 1
var hungry = false

if hungry {
    print("go eat")
}
//: Example 2
var wantTeddyBear = false
var haveMoney = true
if wantTeddyBear && haveMoney {
    print("buy teddy")
}
//: Example 3
var raining = true
if raining {
    print("watch a movie")
}
//: [Next](@next)

/*
 The Club: Part 1
 Your first task it to write an if statement that checks the value of onGuestList. If it's true, then print a message welcoming the person to the club. Then write another if statement to check if the value of onGuestList is false and print a message nicely turning the person away.
 */
// My first attempt
var onGuestlist = false

if onGuestlist {
    print("Welcome to the party")
}
else {
    print("You were not invited, sorry please leave.")
}

// recommended answer
var name = "Stephen"
var onGuestList1 = true

if onGuestList1 {
    print("\(name), come party with us!")
}

if !onGuestList1 {
    print("Sorry, \(name), maybe you can go play Bingo with the Android team.")
}

/*
 The Club: Part 2
 We also need to check to ensure none of our guests are under the drinking age. Modify your first if statements so that it checks if the person is both on the guest list and if they're 21 or older.

 Then modify your second if statement to check if the person is either not on the guest list or if they're under 21.
 */

// we are keeping the name variable from the previous practice question. We are aksi adding an age.
var age = 13
var ofAge = age >= 21
var yearsToGo = 21 - age

if onGuestList1 && ofAge {
    print("Welcome we have been expecting you \(name)!")
}

if !onGuestList1 {
    print("Sorry, \(name) your not on the list. There is always next time")
}

if !ofAge {
    print("Sorry try back in \(yearsToGo) years \(name), you are a little to young. ")
}


// Suggested answer for the question


/*
if onGuestList && age >= 21 {
    print("\(name), come party with us!")
}

if !onGuestList || age < 21 {
    print("Sorry, \(name), maybe you can go play Bingo with the Android team.")
    
}
*/

