//: [Previous](@previous)
//: ## Returning Values
//: The syntax for a function that returns a value is as follows.
//:
//:     func nameOfFunction(/* parameters */) -> Type {
//:         var valueToReturn: Type
//:         // Rest of function
//:         return valueToReturn
//:     }
func calculateTip(priceOfMeal: Double) -> Double {
    return priceOfMeal * 0.15
}
//: Functions must return a value
func isPastBedtime(hour: Int) -> Bool {
    if hour > 9 {
        return true
    } else {
        // what if we remove the return statement?
        return false
    }
}
//: Accessing return values
let priceOfMeal = 43.27

let tip = calculateTip(priceOfMeal: priceOfMeal)

let totalPriceForMeal = priceOfMeal + tip

let totalPriceForMealInline = priceOfMeal + calculateTip(priceOfMeal: priceOfMeal)
//: [Next](@next)

/*
 Practice: Area of Triangle
 Define a function called areaOfTriangle that takes 2 Double parameters: base and height (in order). The function should return a Double that is the area of a triangle which is 0.5 * base * height.

 Then try calling the function with any values you like, and assign the result to a constant area.

 */

func areaOfTriangle(base: Double, height: Double) -> Double{
    return (0.5 * base * height)
}

let area = areaOfTriangle(base: 19.5, height: 17.2)

print(area)
