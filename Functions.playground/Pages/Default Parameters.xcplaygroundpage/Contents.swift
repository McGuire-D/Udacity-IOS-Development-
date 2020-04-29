//: [Previous](@previous)
//: ## Default Parameters
func calculatePriceForMealWithTip(priceOfMeal: Double, tipPercentage: Double = 0.15) -> Double {
    return priceOfMeal + (priceOfMeal * tipPercentage)
}

// This call uses the default tip of 15% (0.15)
calculatePriceForMealWithTip(priceOfMeal: 43.27)
calculatePriceForMealWithTip(priceOfMeal: 100.32, tipPercentage: 0.20)
calculatePriceForMealWithTip(priceOfMeal: 65.43)
calculatePriceForMealWithTip(priceOfMeal: 22.18)
//: [Next](@next)

/*
 Practice: End of Year Bonus
 Define a function called endOfYearBonus that takes 3 Double parameters: basePay, bonus, and percentBonus. percentBonus should have a default value of 0.10. The function should return a Double that is equal to basePay + bonus + (basePay * percentBonus).

 Call the function (and print the result) with and without providing a percentBonus and observe the output.
 */
//my attempt at the solution
func endOfYearBonus(basePay: Double,bonus: Double, percentBonus: Double = 0.1) -> Double {
    return basePay + bonus + (basePay * percentBonus)
}

let Bonus = endOfYearBonus(basePay: 100.25, bonus: 10.2, percentBonus: 20.5)
print(Bonus)

let Bonus2 = endOfYearBonus(basePay: 100.25, bonus: 10.2)
print(Bonus2)


//: Practice: End of Year Bonus Udacity recommended example
/*
func endOfYearBonus1(basePay: Double,bonus: Double, percentBonus: Double = 0.1) -> Double {
    return basePay + bonus + (basePay * percentBonus)
}

print(endOfYearBonus1(basePay: 64000, bonus: 3000))
*/
