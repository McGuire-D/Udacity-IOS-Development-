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

print(removeElements(array: [1,2,3,4,6,8], n: 2))// using the example above we are removing from 0 through 2

//: Practice: Count Distinct Items
func countDistinct(numbers: [Int]) -> Int {
    return Set<Int>(numbers).count
}


// more practice
func practicePerfection(array: [Int], m: Int) ->[Int] {
    var perfection = array
    for _ in 0..<m {
        perfection.remove(at: 0)
    }
    return perfection
}

print(practicePerfection(array: [1,2,3,4,5,6,7,8,9,10,11,12], m: 6))
