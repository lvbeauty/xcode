import UIKit

var str = "Hello, playground"

//  Include values in String
let apple = 5
let orange = 3
let appleSummary = "I have \(apple) apples"
let fruitSummary = "I have \(apple + orange) pieces of fruit"

//  use three quotation marks(""") for strings that take up multiple lines.
let quotation = """
I said "I have \(apple) apples."
And then I said "I have \(apple + orange) pieces of fruit."
"""

//  create arrays and dictionaries using brackets([]), a comma is allowed after the last element
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"
shoppingList
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayns"] = "Public Relations" //Arrays automatically grow as you add elements.
occupations

shoppingList.append("blue paint")
print(shoppingList)

//  create an empty array or dictionary
let emptyArray = [String]()
let emptyDictionary = [String: Float]()
// if the type information can be inferred, we can give empty array or dictionary as follow:
shoppingList = []
occupations = [:]

// Control Flow : Parentheses around the condition or loop variable are optional
// for-in, while, repeat-while to make loops
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores{
    if score > 50{                  // if statement, the conditional must be a Boolean expression
        teamScore += 3
    }
    else{
        teamScore += 1
    }
}
print(teamScore)
// use if and let together to work with optional values
var optionalString: String? = "Hello"
print(optionalString == nil)
var optionalName: String? = nil
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)"  // \() String interpolation
} else {
    print("no name")
}
// Another way to handle optional values is to provide a default value using the ?? operator. ?? -->> nil coalecsing operator
let nickName: String? = nil
let fullName = "Tong"
let informalGreeting = "Hi, \(nickName ?? fullName)" // not sign fullName value to the nickName, Just choose to use nickName

// Switches support any kind of data and a wide variety of comparision operations: they aren't limited to int and test for equality.
let vegetable = "watercress"
switch vegetable {
case "celery":
    print("Add some celery")
case "cucumber", "watercress":
    print("It is \(vegetable)")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything test good in the soup")
}
// Execution doesn't continue to the next case, so there is no need to explicitly break out of the switch at the  end of each case's code

// Dictionaries are an unordered collection, so their keys and vslues are iterated over in an arbitrary order.
// use for-in loop to iterate items in the dictionary
let interestingNumber = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumber {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print("\(largestKind) has largest number which is \(largest) \n")

// while loop vs repeat-while loop: if the begin condition is false, the result will be different.
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat{
    m *= 2
}while m < 100
print(m)

// by using ..< to make a range of indexes
var total = 0
for i in 0 ..< 4 {
    total += i
}
print(total)
// use ..< means a range that omits the upper value, use ... to include both value

var totalInclude = 0
for i in 0...4 {
    totalInclude += i
}
print(totalInclude)

// functions and closures
// use func to declare a function
// calling a function by following its name with a list of arguments in the parentheses, use -> to seperate the parameters' name and the type of return value
func greeting(_ person: String, on day: String) -> String {
    return "Hello, \(person), today is \(day)"
}
greeting( "Tong", on: "Tuesday")

// use tuple to return multiple values
func caculateStatistic(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score < min {
            min = score
        }
        if score > max {
            max = score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistic = caculateStatistic(scores: [45, 39, 20, 100, 95])
print(statistic.sum)
print(statistic.1)

// func can also accept multiple para, then store them in a tuple
func sumOf(numbers: Double...) -> Double {
    var sum = 0.0
    var i = 0
    for number in numbers {
        sum += number
        i += 1
    }
    return sum/Double(i)
}
sumOf()
sumOf(numbers: 13, 45, 67)

// func canbe nested(内嵌), the nested func have access to the var in the outer func
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

// closure: You can write a closure without a name by surrounding code with braces ({}). Use in to separate the arguments and return type from the body. Functions are actually a special case of closures: blocks of code that can be called later.
// The code in a closure has access to things like variables and functions that were available in the scope where the closure was created, even if the closure is in a different scope when it is executed
var numbers = [20, 19, 7, 12]
numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})
let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)
// When a closure is the only argument to a function, you can omit the parentheses entirely.
let sortedNumbers = numbers.sorted{ $0 > $1 } // default is from small to big { $0 < $1 }
print(sortedNumbers)

// objects and class
class Shape{
    var numberOfSides = 0
    func sampleDescription() -> String {
        return "A shap with \(numberOfSides) sides"
    }
}

var shape = Shape()
shape.numberOfSides = 7
let shapeDescription = shape.sampleDescription()

class NameShape{
    var numberOfSides = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func sampleDescription() -> String {
        return "A shap with \(numberOfSides) sides"
    }
}

class Square: NameShape {
    var sideLength: Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    override func sampleDescription() -> String {
        return "a square with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.sampleDescription()

// in addition to properties that are stored, properties can have getter and setter

class EquilateralTrangle: NameShape {
    var sideLength: Double = 0.0
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    override func sampleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
}
var triangle = EquilateralTrangle(sideLength: 3.1, name: "A triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)
// In the setter for perimeter, the new value has the implicit name newValue.(在perimeter的setter中，新值被隐式的命名为newValue)

// Enumeration and Structure
// Use enum to create an enumeration.
enum Rank: Int{
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func sampleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
// By default, Swift assigns the raw values starting at zero and incrementing by one each time, but you can change this behavior by explicitly specifying values. In the example above, Ace is explicitly given a raw value of 1, and the rest of the raw values are assigned in order.
let two = Rank.two
let twoRawValue = two.rawValue

enum Suit {
    case spades, hearts, diamonds, clubs
    func sampleDescription() -> String {
        switch self {
            case .spades:
                return "spades"
            case .hearts:
                return "hearts"
            case .diamonds:
                return "diamonds"
            case .clubs:
                return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.sampleDescription()

// Another choice for enumeration cases is to have values associated with the case—these values are determined when you make the instance, and they can be different for each instance of an enumeration case.
enum SeverResponse {
    case result(String, String)
    case failure(String)
}

let success = SeverResponse.result("6:00 am", "8:09 pm")
let failure = SeverResponse.failure("out of cheese")

switch success {
case let .result(sunRise, sunSet):
    print("Sunrise is at \(sunRise), and sunset is at \(sunSet)")
case let .failure(message):
    print("Failure ... \(message)")
}

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.sampleDescription()) of \(suit.sampleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

// protocol
protocol ExampleProtocol {
    var sampleDescription: String { get }
    mutating func ajust()
}

class SampleClass: ExampleProtocol {
    var sampleDescription: String = "A very sample class"
    var anotherProperty = 69105
    func ajust() {
        sampleDescription += " Now 100% ajusted"
    }
}
var a = SampleClass()
a.ajust()
let aDescription = a.sampleDescription

// Notice the use of the mutating keyword in the declaration of SimpleStructure to mark a method that modifies the structure. The declaration of SimpleClass doesn’t need any of its methods marked as mutating because methods on a class can always modify the class.
struct SampleStruct {
    var sampleDescription: String = "A very sample struct"
    var anotherProperty = 69105
    mutating func ajust() {
        sampleDescription += " Now 100% ajusted"
    }
}
var b = SampleStruct()
b.ajust()
let bDescription = b.sampleDescription

// extension
extension Int: ExampleProtocol {
    var sampleDescription: String {
        return "The number \(self)"
    }
    mutating func ajust() {
        self += 42
    }
}

print(7.sampleDescription)
let aa: ExampleProtocol = 7
print(aa.sampleDescription)
