//: [Previous](@previous)
//: ## Extensions
protocol Souschef {
    func chop(vegetable: String) -> String
    func rinse(vegetable: String) -> String
}

class Roommate {
    var hungry = true
    var name: String
    
    init(hungry: Bool, name: String) {
        self.hungry = hungry
        self.name = name
    }
}
//: Add behavior to `Roommate` without modifying its original implementation
extension Roommate: Souschef {
    func chop(vegetable: String) -> String {
        return "She's choppin' \(vegetable)!"
    }
    
    func rinse(vegetable: String) -> String {
        return "The \(vegetable) is so fresh and so clean"
    }
}

/*
Things to think about
Thanks for sharing! Here's what we answered.

Something that is passed by value such as an instance of a struct is copied when it's assigned to a variable or passed to a function. Changing a property on the instance will only apply to the copy, and the original instance will remain unchanged.

Values that are passed by reference, such as instances of classes, are not copied. Changing a value on a copy will also modify the original instance, since the copy is simply referencing the original.
*/
