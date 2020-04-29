//: [Previous](@previous)
//: ## For-In Loops
//: A for-in loop performs an action for each item in a sequence, like a range.
for i in 1...10 {
    print(i)
}

for _ in 1...3 {
    print("Three cheers for Swift!")
}

let word = "Mississippi"
for c in word {
    print(c)
}

for c in "Oh hi, doggie 🐕" {
    print(c)
}

for i in 0..<0 {
    print(i)
}
//: [Next](@next)

let lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

// your loop to print the characters in lorem goes here


for c in lorem{
    print(c)
}
