//: [Previous](@previous)
//: ## Functions with Params
//: function with a single parameter
func sayHelloToStudent(student: String) {
    print("Hello, \(student)!")
}

sayHelloToStudent(student: "Jarrod")
//: function with multiple parameters
func greetStudent(student: String, school: String) {
    print("Hello, \(student). Welcome to \(school)!")
}

greetStudent(student: "Jarrod", school: "University of Alabama-Huntsville")
//: [Next](@next)

func iLoveSubject(subject: String) {
    print("I love \(subject)")
}

iLoveSubject(subject: "Pizza")

/*
 Practice: Area of Rectangle
 Define and call a function called areaOfRectangle that takes two Int parameters, length, and width, and prints the result of length * width.

 Once you've written the function, try calling it with various arguments to see the output..
 */

func areaOfRectangle(length: Int, width: Int) {

    print(length * width)
}

areaOfRectangle(length: 14, width: 37)


/*
 Practice: Sum or Difference
 Define and call a function called sumOrDifference with the following parameters.

 a - an Int
 b - an Int
 sum - a Bool
 If the sum is true, then the function should print the sum a + b. Otherwise, it should print the difference a - b.

 Try calling the function with different arguments to see the output.
 */

func sumOrDifference(a: Int,b: Int,sum: Bool){
    if sum{
        print(a + b)
    } else {
        print(a - b)
    }
}

sumOrDifference(a: 9,b: 7,sum: false)
