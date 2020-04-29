//: [Previous](@previous)
import Foundation
//: ## While Loops
//: While loops are a simple variety of a loop—they only test a condition. If the condition is not true when we first start the loop, the loop will not execute its code block. While loops are preferred when we don't know exactly how many times a loop will run.
var i = 1
while (i < 1000) {
    i += i
}
print(i)

var dieRoll1: Int = 2
var dieRoll2: Int = 2
while (!(dieRoll1 == 1 && dieRoll2 == 1)) {
    dieRoll1 = Int(arc4random() % 6) + 1
    dieRoll2 = Int(arc4random() % 6) + 1
    print("\(dieRoll1), \(dieRoll2)")
}
/*
while (true) {
    var dieRoll1 = Int(arc4random() % 6) + 1
    var dieRoll2 = Int(arc4random() % 6) + 1
    print("\(dieRoll1), \(dieRoll2)")
    if dieRoll1 == 1 && dieRoll2 == 1 {
        break
    }
}
*/
//: ## Repeat-While Loops

var num = 1

while num<1000{
    num+=1
    if num%2 == 0{
        print(num)
    }
}
    
//: In repeat-while loops, the condition is evaluated after the loop body. The loop is guaranteed to execute at least once.
/*var countdown = 10

repeat {
    print(countdown)
    countdown -= 1
} while countdown > 0
print("Lift off!")
//: [Next](@next)
*/
// fliping coins
// Heads = 0; Tails = 1
var coinFlip1:Int = 0
var coinFlip2:Int = 0

while true {
    coinFlip1 = Int(arc4random() % 2)
    coinFlip2 = Int(arc4random() % 2)
    print("\(coinFlip1), \(coinFlip2)")

    if coinFlip1 == 1 && coinFlip2 == 1 {
        break
    }
}


//Break keyword practice

var number = 0

while true {
    number += 2
    print(number)
    // ↓ Your code goes here ↓
    if number > 498{
    break
    }
}
