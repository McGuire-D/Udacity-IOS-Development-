//: [Previous](@previous)
//: ## Sets
//: Literal syntax
var cutlery: Set = ["fork", "knife", "spoon"]
var flowers:Set<Character> = ["🌷","🌹","🌸"]
//: Initializer syntax
var utensils = Set<String>()
var trees = Set<Character>()
//: ## Set operations
//: Insert, Remove, Count
trees.insert("🌲")
trees.insert("🌳")
trees.insert("🌵")

trees.remove("🌵")
trees.count
//: [Next](@next)

let countDistinct = [20, 10, 10, 30, 20]

func countDistinct(numbers: [Int]) -> Int {
    return Set<Int>(numbers).count
}

