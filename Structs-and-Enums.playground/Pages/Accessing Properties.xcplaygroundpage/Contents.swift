//: [Previous](@previous)
//: ## The Dot Operator
struct Student {
    let name: String
    var age: Int
    var school: String
}

struct GeoLocation {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}



var ayush = Student(name: "Ayush Saraswat", age: 19, school: "Udacity")

let udacityCoordinates = GeoLocation(latitude: 37.400073, longitude: -122.108400)
//: ### Accessing property values
/*:
**To access the properties of structs, use the following syntax:**

*instanceName.propetyName*
*/
ayush.name
ayush.age
//: ### Changing property values
ayush.age = 20
ayush.school = "USC"
//ayush.name = "A-Swat"
//: [Next](@next)

/*
 Can We Change Other Properties?
 Can we change the property values of udacityCoordinates? Why or why not?

 struct GeoLocation {
     var latitude: Double = 0.0
     var longitude: Double = 0.0
 }

 let udacityCoordinates = GeoLocation(latitude: 37.400073, longitude: -122.108400)
 Your reflection
 No it is a constant
 Things to think about
 The answer is also no because udacityCoordinates—although an instance of the GeoLocation struct—has been declared as a constant.This means despite the fact that the individual properties are variables, this particular instance is constant and cannot change.

 If you try this yourself in a Playground file, you'll see Swift compiler complains, but it also recommends we change let to var so that we can update the property value. If we do this, the compiler no longer complains and the statement executes normally.
 */



/*
Practice: Accessing Student Struct Properties.
Fill in the string interpolation by using dot notation to access the properties of ayush.
*/
struct Student1 {
    let name: String
    var age: Int
    var school: String
}

var ayush1 = Student1(name: "Ayush Saraswat", age: 19, school: "Udacity")

// Simply fill in the empty \()s with ayush's information. Do not modify the sentence
print("\(ayush1.name) is \(ayush1.age) years old and attends \(ayush1.school).")

/*
Your Turn
Using dot notation, try changing the x and y values of characterPosition.
*/

struct Point2D {
    var x: Int = 0
    var y: Int = 0
}

var characterPosition = Point2D(x: 10, y: 10)
// ↓ change the x and y values ↓

characterPosition.x = 11
characterPosition.y = 11

print(characterPosition)
