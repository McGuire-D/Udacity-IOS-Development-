//: [Previous](@previous)
//: ## Array Operations
//: append, insert, remove, count, retrieve
var musicians = ["Neil Young","Kendrick Lamar","Flo Rida", "Fetty Wap"]
musicians.append("Rae Sremmurd")
musicians.insert("Dej Loaf", at: 2)
musicians.remove(at: 3)

musicians
musicians.count

let musician = musicians[2]
//: ## Copying
//: Arrays are value types; they are copied by value.
var array = ["same", "same", "same"]
var arrayCopy = array

arrayCopy[2] = "different"
array
arrayCopy
//: [Next](@next)

print(musician)
print(musicians)
print(arrayCopy)

/*
 Array Practice
 */


//: Practice: Print Array Elements
func printElements(array: [Int]) {
    for i in array {
        print(i)
    }
}
//: Practice: Remove Array Elements
func removeElements(array: [Int], n: Int) -> [Int] {
    var newArray = array
    for _ in 0..<n {
        newArray.remove(at: 0)
    }
    return newArray
}
//: Practice: Number Frequency
func frequency(numbers: [Int]) -> [Int: Int] {
    var frequencies = [Int: Int]()
    for i in numbers {
        if let oldValue = frequencies[i] {
            frequencies[i] = oldValue + 1
        } else {
            frequencies[i] = 1
        }
    }
    return frequencies
}
//: Practice: Count Distinct Items
func countDistinct(numbers: [Int]) -> Int {
    return Set<Int>(numbers).count
}
