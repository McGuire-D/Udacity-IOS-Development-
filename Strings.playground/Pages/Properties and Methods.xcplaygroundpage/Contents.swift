//: [Previous](@previous)
import Foundation
//: ## Properties and Methods
var str = "Meet me in St. Louis!"
"The string is \(str.count) characters long"
//: Accessing specific characters
let firstLetter = str.first
let isExcited = str.last == "!"
//: The count property
"The string is \(str.count) characters long"
//: Checking for substrings
str.contains("Lou")
str.hasPrefix("Me")
str.hasSuffix("in")
//: Creating variations of strings
str.lowercased()
str.uppercased()
String(str.reversed())
//: [Next](@next)

/*
 Practice: Spam Filter
 As part of the spam filter for a message board app, there's a function called checkLength(). The goal of this function is to prevent posts that are too short (less than 10 characters) and prevent posts that are too long (more than 10,000 characters). Finish implementing the function to return true if a message is within the length restrictions and false if it is too long or too short.
 */

import Foundation

func checkLength(message: String) -> Bool {
    return message.count <= 10000 && message.count >= 10
}

/*
 Practice: Case Insensitive Search
 Finish implementing search(). If the second string (s2) occurs anywhere in the first string (s1), return true. Otherwise, return false. The search should be case insensitive. For example, search(s1: "Udacity", s2: "CITY") returns true.

 */

func search(s1: String, s2: String) -> Bool {
    return s1.lowercased().range(of: s2.lowercased()) != nil
}
