//: ## Defining a Struct
//: To define a struct in Swift, the following syntax can be used:
//:
//:     struct NameOfStruct {
//:         // variables declarations (known as properties)...
//:     }
struct Student {
    let name: String
    var age: Int
    var school: String
}

struct GeoLocation {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}

struct Point2D {
    var x: Int = 0
    var y: Int = 0
}
//: [Next](@next)

var name1 = "Ayush Saraswat"
var age1 = 19
var school1 = "Udacity"

var name2 = "Jarrod Parkes"
var age2 = 24
var school2 = "Udacity"


//First attempt at struct syntax

struct Author {
    let firstName: String
    let lastName: String
    var living: Bool
}

var ayush = Student(name: "Ayush Saraswat", age: 19, school: "Udacity")

print(ayush)



/*
Practice: Movie Struct Initialization
Using the default constructor, create a new instance of the Movie struct. Assign the instance to a constant called myMovie.
*/


struct Movie {
    let title: String
    let year: Int
}
// ↓ your code here ↓

let myMovie = Movie(title: "Stephens Universe",year: 1882)
