//: [Previous](@previous)
//: ## Exercise: The Club
//: Uncomment the following sets of constants to check your if statements. When you have the correct output, paste your code into the text box in the lesson to see a sample solution.
/*
 var name = "Ayush"
 var age = 19
 var onGuestList = true
 var knowsTheOwner = true
*/
/*
 var name = "Gabrielle"
 var age = 29
 var onGuestList = true
 var knowsTheOwner = true
*/

var name = "Chris"
var age = 32
var onGuestList = false
var knowsTheOwner = false
//: Your code goes here

if onGuestList && age >= 21 {
    print("\(name), come party with us!")
} else if knowsTheOwner {
    print("Oh you know the owner \(name)? Why didnt you say so come in!")
} else {
    print("Sorry, \(name), maybe you can go play Bingo with the Android team.")
}


//: [Next](@next)
