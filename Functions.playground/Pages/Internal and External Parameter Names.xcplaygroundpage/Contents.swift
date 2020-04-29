//: [Previous](@previous)
//: ## Internal and External Names
func addValues(value1 x: Int, value2 y: Int) -> Int {
    // internally, use `x` and `y`
    return x + y
}

// externally, use `value1` and `value2`
addValues(value1: 5, value2: 10)
//: ## Ignore External Names
func addExcitementToString(_ string: String) -> String {
    return string + "!"
}

addExcitementToString("Swift")

func combineStrings(_ s1: String, _ s2: String) -> String {
    return s1 + s2
}

combineStrings("We love", " Swift!")
//: [Next](@next)

//How could the following function be improved? There's no right or wrong answer.

func multiply(value1 x: Int,value2 y: Int,value3 z: Int) -> Int {
    return x * y * z
}

print(multiply(value1: 2, value2: 8, value3: 17))


/*
 Your reflection
 func multiply(value1 x: Int,value2 y: Int,value3 z: Int) -> Int {
     return x * y * z
 }
 Things to think about
 There's no right or wrong answer here. One possible improvement is using _ for x, y, and z. If we know the function is simply multiplying three numbers, the programmer doesn't need to know the exact names of the internal parameters.
 */
