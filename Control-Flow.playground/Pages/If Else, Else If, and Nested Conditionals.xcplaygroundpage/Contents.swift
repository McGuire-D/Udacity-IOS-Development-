//: [Previous](@previous)
//: ## If-Else Statements
//: General form for If-Else statements
//:
//:     if <condition> {
//:         <code to execute>
//:     } else {
//:         <code to execute>
//:     }
var breakfast = false
var lunch = false
var dinner = false
var secondBreakfast = true

if breakfast {
    print("Good morning!")
} else  if lunch {
    print("Good afternoon!")
} else if dinner {
    print("Good evening!")
} else if secondBreakfast {
    print("Second breakfast is the best breakfast")
} else {
    print("Hello!")
}
//: ## If, Else-If Statements
//:
//: General form for If, Else-If statements
//:     if <condition1> {
//:         <code to execute>
//:     } else if <condition2> {
//:         <code to execute>
//:     } else if <condition3> {
//:         <code to execute>
//:     } else {
//:         <code to execute>
//:     }

//: ## Nested Conditionals
let hungry = true
let vegetarian = true
//: With nested conditionals
if hungry {
    if vegetarian {
        print("Let's eat!")
    } else {
        print("Let's eat steak!")
    }
}
//: With compound boolean expression
if hungry && vegetarian {
    print("Let's eat!")
} else if hungry && !vegetarian {
    print("Let's eat steak!")
}
//: [Next](@next)

/*
 The Club: Part 3
 We know that if someone is on the guest list and is 21 or older, then they'll be admitted into the club. Otherwise, they will be turned away. Knowing this fact, rewrite your code into a single if statement. The else case should be used to turn the clubgoer away.
 */

// My attempt
var name = "Stephen"
var age = 8
var onGuestList = true
var knowsTheOwner = true

if onGuestList && age >= 21 {
    print("\(name), come party with us!")
} else if !onGuestList || age < 21 {
    print("Sorry, \(name), maybe you can go play Bingo with the Android team.")
} else {
    print("I am confused.")
}

// Redommended answer

if onGuestList && age >= 21 {
    print("\(name), come party with us!")
} else {
    print("Sorry, \(name), maybe you can go play Bingo with the Android team.")
}


/*
 The Club: Part 4
 There's one exception to our club's rules. If someone knows the owner, they can get into the party, regardless of their age or whether or not they're invited.

 Add an else if statement to your program to check if knowsTheOwner is true. If so, print a message informing the person to see the owner.
 */

var name1 = "Stephen"
var age1 = 8
var onGuestList1 = true
var knowsTheOwner1 = true


if onGuestList1 && age1 >= 21 {
    print("\(name1), come party with us!")
} else if knowsTheOwner1 {
    print("Oh you know the owner \(name1)? Why didnt you say so come in!")
} else {
    print("Sorry, \(name1), maybe you can go play Bingo with the Android team.")
}

// Recoommended answer
if onGuestList && age >= 21 {
    print("\(name), come party with us!")
} else if knowsTheOwner {
    print("\(name), we'll have to take you to see the owner.")
} else {
    print("Sorry, \(name), maybe you can go play Bingo with the Android team.")
}
