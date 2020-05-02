//: [Previous](@previous)
//: ## Dictionary operations
//: insert, count, remove, update, retrieve
var animalGroupsDict = ["whales":"pod", "geese":"flock", "lions": "pride"]
//: Adding items to a dictionary
animalGroupsDict["crows"] = "murder"
animalGroupsDict["monkeys"] = "troop"
//: The count method is available to all collections.
animalGroupsDict.count
print(animalGroupsDict)
//: Removing items from a dictionary
animalGroupsDict["crows"] = nil
animalGroupsDict
//: Updating a value
animalGroupsDict["monkeys"] = "barrel"
var group = animalGroupsDict.updateValue("gaggle", forKey: "geese")
type(of: group)

animalGroupsDict.updateValue("crash", forKey: "rhinoceroses")
print(animalGroupsDict)
//: ## Example
//: Retrieving the value for a particular key
let groupOfWhales = animalGroupsDict["whales"]
//: Why would the code below return an optional?
//:
//:     animalGroupsDict["whales"]
//: We unwrap a value returned from a dictionary just like we would unwrap any other optional.
if let groupOfWhales = animalGroupsDict["whales"] {
    print("We saw a \(groupOfWhales) of whales from the boat.")
} else {
    print("No value found for that key.")
}
//: What happens if the key isn't found?
if let groupOfSasquatches = animalGroupsDict["Sasquatches"] {
    print("We saw a \(groupOfSasquatches) of Sasquatches on our hike.")
} else {
    print("No value found for that key.")
}
//: [Next](@next)

/*
 Practice: Number Frequency
 Finish implementing the function frequency(numbers: [Int]) -> [Int: Int] that returns a dictionary containing the frequency of each number in the array. The dictionary's keys will be the Int values in the numbers array. The dictionary's values will be the number of times that number occurs in the numbers array. For example

 If the numbers array were the following:

 let input = [1, 3, 1, 1, 2, 7, 3, 5, 8, 5, 4, 9]
 Then the calling frequency(numbers: input) would return a dictionary like the following.

 [
     1: 3,
     2: 1,
     3: 2,
     4: 1,
     5: 2,
     7: 1,
     8: 1,
     9: 1
 ]
 The numbers in the output are ordered for demonstrational purposes, but keep in mind that dictionaries are an unordered data type. Your dictionary's values will just need to match the number of occurrences of each number in the array. */

func frequency(numbers: [Int]) -> [Int: Int] {
    var frequencies = [Int: Int]()
    for i in numbers {
        if let oldValue = frequencies[i] {
            frequencies[i] = oldValue + 1
        } else {
            frequencies[i] = 1
        }
    }
    return frequencies
}

var testDictionary = ["Donkeys": true,"Elephants": true]



var presidentialPetsDict = ["George H. W. Bush": "Millie", "Barack Obama": "Bo", "Bill Clinton": "Boots","George Bush": "Miss Beazley", "Ronald Reagan": "Lucky"]

if let dog = presidentialPetsDict["Barack Obama"] {
        print("Michele Obama walks \(dog) evey morning.")
    } else {
        print("No value found.")
    }

