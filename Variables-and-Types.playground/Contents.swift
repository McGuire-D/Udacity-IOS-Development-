import UIKit

var str = "Hello, playground"

/*
Course Sandbox Learning how to use Xcode
 */

print("Hello from the IOS Team!!")

print((200*7)/2)
/*
Introduction to swift
 */
var question = "Do you think you can learn Swift"
print(question)

var response = "You bet I can do it!"
print(response)

var question1 = "Does practice make perfect?"
print(question1)

var response1 = "Maybe not perfect but as close as possible"
print(response1)

/*
Print Hello World!
 */

var greeting = "Hello, world!"
print(greeting)

// This is used for single line comments.

/*
 This is used for
 multiple line comments.
 */

print("This will be printed, with the print function")

/*
 Intro into Variables
*/

// Udacity example of Variables

// Consider a tomato soup recipe that makes 4 servings...
var numberOfServingsForRecipe = 4
var desiredNumberOfServings = 8

var servingsFactor = desiredNumberOfServings/numberOfServingsForRecipe

// Calculate the number of pounds of tomatoes needed for 8 servings.
var poundsOfTomatoesForRecipe = 2
var amountToUseToday = poundsOfTomatoesForRecipe * servingsFactor

print(amountToUseToday)

// Practice

var numberOfPancakesPerPerson = 3
var numberOfPeople = 4

var totalPancakes = numberOfPancakesPerPerson*numberOfPeople

print(totalPancakes)

var cupsOfFlowerPerpancake = 1
var totalCupsOfFlowerPerPancake = cupsOfFlowerPerpancake*numberOfPancakesPerPerson
var totalFlower = totalCupsOfFlowerPerPancake*numberOfPeople

print(totalFlower)

//Creating Variables
//Swift assumes variables types unless you specify

var petsAge = 12
//petsAge is inferred to be an integer by swift,myMiddleInitial would be a string if it was not defined as a Character.
var myMiddleInitial: Character = "A"

//Additional variable decleration types
var numberOfWheels: Int = 4
var centimetersOfRainfall: Float = 5.5
var pi: Double = 3.14159265359
var letterOfTheDay: Character = "z"
var myFavoriteAnimal: String  = "octopus"
var rainingOutside: Bool  = true

/*
 Strong Typing
 Swift is a strongly typed language—meaning that once a variable’s type has been set, it cannot change.

 In other words, while we can change the value of a variable, we cannot change its type.
 */
// Example of strong typing
petsAge = 13
petsAge = 14
/* petsAge = "Old"
 
 this will receive an errorerror: Variables-and-Types.playground:100:11:
 error: cannot assign value of type 'String' to type 'Int'
 petsAge = "Old"
*/


//Constants vs Variables

//As the name implies, you can not change the value of a Constant like you can a Variable

//Example 1
let whatsForDinner = "Pizza!"
var customizedWhatsForDinner = "Salad, Gross!"

/*
 whatsForDinner = "Burgers!"
 Trying to change a constant will throw an error and not run.
 Variables-and-Types.playground:113:1: note: change 'let' to 'var' to make it mutable
 let whatsForDinner = "Pizza!"
*/


//Example 2
let birthYear = 1988
var currentYear = 2020
var age = currentYear-birthYear
currentYear=1999
age = currentYear-birthYear
print(age)


/*
 Valid Names
 In general, variable and constant names will contain uppercase and lowercase characters. You’ll also see names containing numbers and some special characters, such as underscores. Swift even lets you use emoji as variable and constant names, but this is rarely used in practice.
 */

let firstName = "Gabrielle"
let _founder = "Sebastian"
let 🐢 = "turtle"

/*
 However, some names are not allowed. For example, we can’t begin a constant name with a number, nor can we begin a name with a special character that may have another meaning in the language.

 
 3rdFromTheSun = "🌎"
 var $amount = 31
 
 When naming variables and constants, the standard convention is to use lowerCamelCase like the firstName constant above. You begin the name with a lowercase letter, and the first letter of each subsequent word is capitalized.
 */


/*
 There are many instances where strings need to contain newline characters. Here we take a string literal that represents a person’s email signature, and assign it to a constant.
 
 let emailSignature = "Aliyah Smith
 VP, Sales
 (555) - 555 - 5555"
 
 However, if you try to run this in Xcode or the course sandbox, you'll get an error like this:

 unterminated string literal
 
 Let’s rewrite the above example by escaping the newline, using \n in place of the line breaks.
 */

let emailSignature = "Aliyah Smith\nVP, Sales\n(555) - 555 - 5555"
print(emailSignature)


/*
 Escape Characters in Swift
 The following are the most common escape characters:

 Character    Usage
 \n    Newline / line feed
 \t    Horizontal tab
 \"    Double quotation mark, using " alone signifies the end of a string
 \'    Single quotation mark
 \    Backslash, using "\" alone escapes the next character
 */
