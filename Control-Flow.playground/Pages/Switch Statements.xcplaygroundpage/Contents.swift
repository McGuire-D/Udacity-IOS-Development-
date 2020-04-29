//: [Previous](@previous)
//: ## Switch Statements
let month = 2

if month == 1 {
    print("January")
} else if month == 2 {
    print("February")
} // ...

switch month {
case 1: print("January")
case 2: print("February")
    // ...
default: print("Unknown month")
}
//: [Next](@next)

// Switch statements practice

let meal = "breakfast"

if meal == "breakfast" {
    print("Good morning!")
} else if meal == "lunch" {
    print("Good afternoon!")
} else if meal == "dinner" {
    print("Good evening!")
} else {
    print("Hello!")
}


switch meal {
case "breakfast":
    print("Good morning!")
case "lunch":
    print("Good afternoon!")
case "dinner":
    print("Good evening!")
default:// Very important to put the default code or you will get switch must be exhausted error!
    print("Hello!")
}
