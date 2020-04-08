import UIKit

// constants and variables
var str = "Hello, playground" //variable
let maxinumNumberOfLoginAttempts = 10
var currentLoginAttempts = 0
var x=0.0, y=0.0, z=0.0
var welcomeMessage: String //type annotation
welcomeMessage = "Hello"
var red, green, blue: Double

// Naming constants and variables
let π = 3.14
let 您好 = "你好世界"
let 🐶🐮 = "dogcow"
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
let languageName = "swift"
// error: languageName = "swift++"

// Printing Constants and variables
print(friendlyWelcome)
print("The current value of friendlyWelcome is \(friendlyWelcome)")

// Comments
/*This is also a comment
 but is written over multiple lines*/

// Semicolons
let cat = "🐱"; print(cat)

// Integers
let minValue = UInt8.min
let maxValue = UInt8.max

// Floating-Point: Doule__64-bit__15 decimal digitals; Float__32-bit__6 decimal digitals

// Type safety and inference
let meaningOfLife = 42 //meaningOfLife inferred by Int
let pi = 3.1415926 //pi was inferred to be of type double // swift always choose double, not float
let anotherPi = 3 + 0.14 // anohterPi was also inferred to be of type Double= Int + Double

/* numeric Literals
    decimal has no prefix
    binary with a 0b prefix
    octal with a 0o prefix
    hexadecimal with a 0x prefix   */
let decimalInteger = 17         //17
let binaryInteger = 0b10001     //17
let octalInteger = 0o21         //17
let hexadecimalInteger = 0x11   //17
let decimalDouble = 12.1875     //12.1875
let exponentDouble = 1.21875e1  //12.1875
let hexadecimaltDouble = 0xC.3p0 //12.1875
let paddedDouble = 000123.456
let oneMillion = 1_000_000      //underscores to help with readability, doesn't affect the value
let justOverOneMillion = 1_000_000.000_000_1

//  numeric Type Conversion
/*  let cannotBeNegative: UInt8 = -1
    let tooBig = Int8 = Int8.max + 1    */
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAddOne = twoThousand + UInt16(one)   //type conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi1 = Double(three) + pointOneFourOneFiveNine
let integerPi = Int(pi1)

//  Type aliases
typealias audioSample = UInt16
var maxAmplitudeFound = audioSample.max

//  Booleans
let orangesAreOringe = true
let turnipsAreDelicious = false
if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
}else{
    print("Eww, turnips are horrible!")
}
let i = 1
if i==1 {
    print(true)
}

//  Tuples
let tuple1: (Int, Int, String, Float, String) = (909, 908, "kik", 5.4321, "HUD")
print(tuple1)
let tuple2 = (A: 909, 908, B: "kik", 5,4321, "HUD")
print("A = \(tuple2.A) B = \(tuple2.B) last = \(tuple2.4)")
var tuple3: (Int, (Int, String, Float, Any)) = (909, (908, "kik", 5.4321, "HUD"))
print(tuple3)
tuple3.1.0 = 202; print(tuple3)
tuple3.1.3 = 1982; print(tuple3) // can be modified; cannot be add or delete
let (AA, _, BB, _, LL) = tuple1
print(AA,BB,LL)
class PersonModel: NSObject{
    var name: String = "";
    var age: Int = 0;
    func modelDescription() ->(String, Int){
        return(self.name, self.age)
    }
}
let model = PersonModel()
model.name = "Tong"
model.age = 20;
let tuple4: (Int, Int, String, Float, String, PersonModel) = (909, 908, "kik", 5.4321, "HUD", model)
print(tuple4.5.modelDescription())

// Optionals
let possibleNumber = "jjj"
let convertedNumber = Int(possibleNumber)
var severResponseCode: Int? = 404
severResponseCode = nil
var surveyAnswer: String?
if convertedNumber != nil {
    print("ConvertedNumber contains some integer value.")
}
if convertedNumber != nil {
    print("ConvertedNumber has an integer value of \(convertedNumber!)") // forced unwrapping, dangrous
}

// Optional binding: another way to unwrap optional
if let actualNumber = Int(possibleNumber){
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
}
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber)<\(secondNumber)<100")
}

// implicity unwrapped optionals
let possibleString: String? = "An optional string"
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string"
let implicitString = assumedString
let optionalString = assumedString
if assumedString != nil{
    print(assumedString!)
}
if let definiteString = assumedString{
    print(definiteString)
}
