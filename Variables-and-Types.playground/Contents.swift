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
