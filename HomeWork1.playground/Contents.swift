import UIKit

//  NSNumber & NSString are vector quantities
//  Try to use NSNumber for different data types.
var nsStr: NSString = "Hello, playground"
var nsInt: NSNumber = 1
var nsFloat: NSNumber = 0.1
//  var string: NSNumber = "string"  .....can't use NSNumber for string type
var nsBool: NSNumber = true
var f: Float = 0.1
//  swift number transfer to NSNumber
let nsNum1 = NSNumber(integerLiteral: 1)
let nsNum2 = NSNumber(floatLiteral: 0.1)    //floatLiteral: Double
let nsNum3 = NSNumber(booleanLiteral: true)
let nsStr1 = NSString(string: "123")
//  NSNumber transfer to swift number
let intNum = nsNum1.intValue
let nIntNum = nsNum1.uintValue
let floatNum = nsNum2.floatValue
let doubleNum = nsNum2.doubleValue
let boolBum = nsNum3.boolValue
//  compare 2 NSNumber value
let nsNum4: NSNumber = 10
let nsNum5: NSNumber = 10.1
let bl: Bool = nsNum4.isEqual(to: nsNum5)
let result = nsNum5.compare(nsNum4) // Question????
print(result.rawValue)
if result == ComparisonResult.orderedAscending {
    print("nsNum5 < nsNum4")
}else if result == ComparisonResult.orderedDescending{
    print("nsNum5 > nsNum4")
}else{
    print("nsNum5 = nsNum4")
}
//  NSNumber transfer to String type & String transfer to NSNumber
let str: String = NSNumber(floatLiteral: 10.456).stringValue
let nsNum: NSNumber = NSNumber(floatLiteral: NSString(string: str).doubleValue)


//do the struct to implement the class

struct CheckingDiffInits{
    var var1 = 123
    var var2 = "abc"
}

let objStruct = CheckingDiffInits(var1: 999, var2: "good")

print(objStruct.var1, "-", objStruct.var2)

class CheckingDiffInitsClass
{
    var var1 = 456
    var var2 = "efg"
    
    init() {    // Default Init

    }
    
    init(newInt: Int, newStr: String) {     // Custom Init
        self.var1 = newInt
        self.var2 = newStr
    }
}

let objClass = CheckingDiffInitsClass(newInt: 1000, newStr: "Excellent")

print(objClass.var1, "-", objClass.var2)
