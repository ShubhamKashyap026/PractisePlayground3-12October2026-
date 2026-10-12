import Cocoa

var greeting = "Hello, playground"

// If, Else if, Else, Ternary Operator

let score = 85

if score > 80 {
    print("Great Job")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going, we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote.")
}

let ourName = "John"
let friendsName = "Bob"

if ourName < friendsName {
    print("It's \(ourName) vs \(friendsName)")
} else {
    print("It's \(friendsName) vs \(ourName)")
}

var numbers = [1,2,3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

var inputName = ""

if inputName.count == 0 {
    inputName = "Anonymous"
}

print("Your input name is \(inputName)")

// == - Equalt to
// != - not Equal to

var username = "taylorSwift123"
var bigUsername = ""

if username == "" {
    username = "Empty"
}

if bigUsername.isEmpty { // Most Optimised
    print("isEmpty")
}

print("Welcome, \(username)")

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)

// Else if
let personAge = 16

if personAge >= 18 {
    print("You can vote in the next election")
} else {
    print("Sorry too young to vote")
}

let temp = 32

if temp > 30 && temp < 40 {
    print("It's a nice day")
}

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}

enum TransportOption {
    case airplane, bicyle, car, bike, tram
}

let userSelectedOption = TransportOption.airplane

if userSelectedOption == .airplane || userSelectedOption == .tram {
    print("Thanks for using mass transporation method for environment health")
} else if userSelectedOption == .car || userSelectedOption == .bike {
    print("You can do Better")
} else {
    print("Good Job")
}

// Switch Statement
enum Weather {
    case sunny, rainy, windy, snowy, unknown
}

let forecast = Weather.snowy

switch forecast {
case .sunny:
    print("Sunny Weather")
    
case .rainy:
    print("Rainy Weather")
    
case .windy:
    print("Windy Weather")
    
case .snowy:
    print("Snowy Weather")
    
case .unknown:
    print("Unknown Weather")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You are Batman")
case "Central City":
    print("You are Flash")
case "Wakanda":
    print("You are Black Panther")
default:
    print("Who are you ?")
}

let day = 5
print("My true love gave to me.")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A patridge in a pear tree")
}

// Ternary(Three) Conditional Operator -> Condition ? True : False
1 + 5 == 6 ? print("true") : print("false")

let votingAge = 18
let canVote = age >= 18 ? print("You can Vote") : print("You are too young to vote")


let hour = 23

print(hour < 12 ? "Its before noon" : "Its after noon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No One" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark
let background = theme == .dark ? "black" : "white"
print(background)
