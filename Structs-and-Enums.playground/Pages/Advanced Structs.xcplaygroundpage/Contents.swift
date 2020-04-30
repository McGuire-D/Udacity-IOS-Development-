//: [Previous](@previous)
//: ## Nested Structs
//struct Song {
//    let title: String
//    let length: String
//    var artistAge: Int
//    let artistFirstName: String
//    let artistLastName: String
//    let artistHometown: String
//}
struct Artist {
    let firstName: String
    let lastName: String
    var age: Int
    let hometown: String
}

struct Song {
    let title: String
    let length: String
    let artist: Artist
}

let garth = Artist(firstName: "Garth", lastName: "Brooks", age: 53, hometown: "Tulsa, Oklahoma")

let thunderRolls: Song
thunderRolls = Song(title: "Thunder Rolls", length: "3:42", artist: garth)
//: ### Methods, Computed Properties and Static Properties
struct Beaker {
    var volumeMilliliters: Double
    static var madeIn = "China"
    
    // These are US ounces
    var volumeOunces: Double {
        return volumeMilliliters * 0.033814
    }
    
    func canContainContents(otherBeaker: Beaker) -> Bool {
        return volumeMilliliters >= otherBeaker.volumeMilliliters
    }
    
    mutating func increaseCapacity() {
        volumeMilliliters += 500
    }
}

let beaker1 = Beaker(volumeMilliliters: 500)
let beaker2 = Beaker(volumeMilliliters: 1000)
Beaker.madeIn = "Japan"
//: [Next](@next)

/*
 Why Are Structs Useful?
 Why are structs useful? And, can you give an example of when you would want to use one?
 
 Things to think about
 Structs are useful because they allow us to bind-up multiple types into one easy-to-use type. One situation where you might want to use a struct is to encapsulate all the properties associated with a book. Imagine you have an app that lets you search for a book by ISBN, and then displays the book's information.
 */

struct Band{
    let name: String
    let genre: String
    let members: BandMembers
    }

struct BandMembers{
    let members: String
}

let crew = BandMembers(members:"Benjamin Burnley, Aaron Bruch, Shaun Foist, Jasen Rauch, Keith Wallen")

let BreakingBenjamin = Band(name: "Breaking Benjamin", genre: "Rock", members: crew)

print(BreakingBenjamin)
