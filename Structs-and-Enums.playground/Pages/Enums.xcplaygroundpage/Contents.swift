//: [Previous](@previous)
//: ## Enumerations
//: Enums can represent any value in a finite set of related values.  Here are some examples ...
//: Primary colors
enum PrimaryColor {
    case red
    case blue
    case yellow
}
//: Baseball teams of the American League West
enum AmericanLeagueWest {
    case athletics
    case astros
    case angels
    case mariners
    case rangers
}
//: [Next](@next)

/*
 Practice: Finger Enum
 Write an enum called Finger to represent the five fingers on a human hand. Use the following cases.

 thumb
 index
 middle
 ring
 pinky
 Assign a raw value of type Int to each finger, counting from 1 through 5. For example thumb should have a raw value of 1, index, a raw value of 2 and so on. Use the exact case names as above.
*/
 enum Finger: Int {
     case thumb = 1
     case index = 2
     case middle = 3
     case ring = 4
     case pinky = 5
 }


