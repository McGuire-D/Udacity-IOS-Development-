//: [Previous](@previous)
//: ## Initializing a Struct
struct Student {
    let name: String
    var age: Int
    var school: String
}

var ayush = Student(name: "Ayush Saraswat", age: 19, school: "Udacity")

struct GeoLocation {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}

struct Point2D {
    var x: Int = 0
    var y: Int = 0
}

var characterPosition = Point2D(x: 10, y: 10)
let udacityCoordinates = GeoLocation(latitude: 37.400073, longitude: -122.108400)
//: [Next](@next)




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
