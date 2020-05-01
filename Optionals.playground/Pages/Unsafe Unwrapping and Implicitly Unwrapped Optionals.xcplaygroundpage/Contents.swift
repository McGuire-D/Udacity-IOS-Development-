//: [Previous](@previous)
//: ## Unsafe Unwrapping
//: Example: Revisiting the Int() initializer method
let w = Int("123")!
w * 2
//: ## Implicitly Unwrapped Optionals
struct Villain {
    let name: String
    // exclamation point means implicitly unwrapped
    var evilScheme: String!
    
    func performScheme() {
        // no unwrapping necessary
        print("And now, I will \(evilScheme)!")
    }
}

var villain = Villain(name: "Billy", evilScheme: nil)
villain.evilScheme = "steal from the cookie jar"
// we know for sure the scheme has been set
villain.performScheme()
//: [Next](@next)

/*
 Reflect
 What is the difference between unwrapping an optional with ?, with ! and with implicit unwrapping?


 
 
 Things to think about
 Thanks for sharing. Here's what we answered.

 Unwrapping with ? is useful if you're accessing nested properties or want some default behavior to occur if a value is nil.

 Using ! does not require providing a default value and is useful if you know that a value won't be nil. However, if it is nil, the program will crash.

 Implicitly unwrapping optionals is also useful when you know a value won't be nil, but you can use the same syntax as a normal property. However, unintended behavior and crashes can occur if it is nil.
 */
