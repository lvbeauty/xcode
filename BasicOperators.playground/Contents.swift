import UIKit

// Assignment Operator
let b = 10
var a = 5
a = b   // "=" is assignment(赋值) "==" is compare
let (x, y) = (1, 2)
let (z, m, n) = (3, 9.87, "tong")
//if x=y {
//    This is not valid, because x=y doe not return a value
//}
1 + 2
5 - 3
2 * 3
7 / 2.0
"hello, " + "world"

//  Reminder operator
7 % 3
9 % 4
-9 % 4
9 % -4  // a % b : the sign of b is ignored

//  Unary(一元) Minus operator
let three = 3
let minusThree = -three
let plusThree = -minusThree //  the unary minus operator is prepended directly before the value it operates on, without any space.

//  Unary plus operator
let minusSix = -6
let alsoMinusSix = +minusSix    // provide symmetry in your code

//  Compond Assignment Operators
var c = 1
c += 2
