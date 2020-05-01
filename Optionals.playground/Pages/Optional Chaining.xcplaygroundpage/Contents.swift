//: [Previous](@previous)
//: ## Optional Chaining
//: Example: Animals With and Without Tails
struct Tail {
    var length: String
    
    init(length: Int) {
        self.length = "\(length)"
    }
}

struct Animal {
    var name: String
    var species: String = "homo sapiens"
    var tail: Tail?
    
    init(name: String, species: String, tailLength:Int?) {
        self.name = name
        self.species = species
        if let tailLength = tailLength {
            self.tail = Tail(length: tailLength)
        } else {
            self.tail = nil
        }
    }
}

var animal = Animal(name: "Lenny", species: "lemur", tailLength: nil)

//animal = Animal(name: "Gilbert", species: "Gorilla", tailLength: nil )

if let tailLength = animal.tail?.length {
    print("\(animal.name)'s tail is \(tailLength) cm long")
} else {
    print("\(animal.name) doesn't have a tail.")
}
//: Nil coalescing operator
let tailLength = animal.tail?.length ?? "0"
print("Tail length: \(tailLength)")
//: [Next](@next)

/*
Using the enums and structures, implement the getArtistGenre() function. Given a Song as input, return the raw value of the artist's primary genre. If either the artist is nil or the primaryGenre is nil, then return an empty string. You must use optional chaining and the nil coalescing operator (??).
 */

var artist = Artist(name: "Billy Dean")


enum Genre: String {
    case country, blues, folk
}

struct Artist {
    let name: String
    var primaryGenre: Genre?
}

struct Song {
    let title: String
    let released: Int
    var artist: Artist?
}

func getArtistGenre(song: Song) -> String {
    return song.artist?.primaryGenre?.rawValue ?? "" // This is the answer
}

