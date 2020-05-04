//: [Previous](@previous)
//: ## String Manipulation
import Foundation
//: Appending strings
var hello = "hello "
var world = "world!"
hello.append(world)
// same as concatenation or compound assignment
// hello += world
//: Trimming characters
var message = "   Be back later!        "

while message.last == " " {
    message.removeLast()
}

while message.first == " " {
    message.removeFirst()
}
print(message)
//: Replacing Substrings
let verbose = "We hope you are very excited to learn Swift. It's a very fun and very useful skill. Soon enough, you'll be writing your very own app!"
let better = verbose.replacingOccurrences(of: "very ", with: "")
//: [Next](@next)

print(better)


   
/*
 Practice: Remove First N Elements
 Finish implementing the function remove(input: String, first: Int, last: Int), where first is the number of characters to be removed from the beginning of the string, and last is the number of characters to be removed from the end of the string. Return a new string with all the characters removed.

 Hint 1: It's possible that the function will be called with 0 for first, last, or both.

 Hint 2: if the sum of first and last are greater than the number of characters in string, then we'd remove more characters than are present in the string and the program will crash. If this is the case, return an empty string.
 */

func remove(input: String, first: Int, last: Int) -> String {
// we require a variable to manipulate strings
var newString = input
// modify newString and return the result
        if first + last > input.count {
        return ""
    }
    for _ in 0..<first {
        newString.removeFirst()
    }
    for _ in 0..<last {
        newString.removeLast()
    }
    return newString
}
