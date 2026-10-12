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


// Loops
// For Loop
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
//    os = "visionOS"
    print("Swift runs great on \(os).")
}

for platform in platforms {
    print("\(platform) works great with Swift")
}

func autoTimeTableGenerator(inputNumber : Int, upto: Int) { // Time Table Generator
    print("The time table for \(inputNumber) is:")
    for i in 1...upto {
        print("\(inputNumber) * \(i) is \(inputNumber * i)")
    }
}

autoTimeTableGenerator(inputNumber: 12, upto: 10)
// ..< // Exclusive range
// ... // Inclusive range

// Nested Loops
let commonPeople = ["Jerry", "John", "Tommy", "Talcom"]
let commonPeopleAges = [25,28,30]

for age in commonPeopleAges {
    for people in commonPeople {
        print("\(people) is \(age) years old")
    }
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

let femaleNames = ["Piper", "Alex", "Suzanne", "Gloria"]
print(femaleNames[1...3])

print(femaleNames[2...])


// While Loop // Runs Infinite until condition is met
var countDown = 10
while countDown > 0 { // Runs until condition is met
    print(countDown)
    countDown -= 1
}

print("Rocket Blast")

// Random Range
let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 { // Work with logic of != more // Works more for when you dont know the when will the end point arrive
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit")

// while loops can loop until any arbitrary condition becomes false, which allows them until we tell them to stop
// while loop comes in handy: we can keep the loop going around until we’re ready to exit

var averageScore = 2.5
while averageScore < 15.0 {
    averageScore += 2.5
    print("The average score is \(averageScore)")
}


// Skipping loops
// continue - to skip current iteration of loop
// break - to exit the loop entirely
let fileNames = ["me.jpg", "work.txt", "sophie.jpg"]

for fileName in fileNames {
    if fileName.hasSuffix("txt") {
        continue
    }
    
    print("Found picture: \(fileName)")
}

let number1 = 10
let number2 = 20
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores {
    if score == 0 {
        break
    }

    count += 1
}

print("You had \(count) scores before you got 0.")

// Swift’s labeled statements // Allows us to name the loops for visual clarity
let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options { // Naming a loop makes it easier to break it
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}


// Just like break, you can use continue with labeled statements if you want, but honestly I can’t remember ever seeing it done!
