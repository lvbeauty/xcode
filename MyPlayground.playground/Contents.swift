import UIKit

var str = "Hello, playground"
var x = 0.0, y = 0.0, z = 9
print(x,y,z)
print("hello, world!")
let label = "The width is "
let explicitDouble : Double = 70
let width = 94
let widthLabel = label + String(width)

// array(item in order)
var somInts = [Int]()
print("someInts is of type [Int] with \(somInts.count) items.")
somInts.append(3)
somInts = [] //when count is 0 (meaning the array is empty), there are no valid indexes.
var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
//Creating an Array by Adding Two Arrays Together
var sixDoubles = threeDoubles + anotherThreeDoubles
//Creating an Array with an Array Literal, separated by commas
var shoppingList: [String] = ["eggs","milk"] // allows strings only
// the array literal is permitted as a way to initialize shoppingList with two initial items
var ShoppingList = ["Eggs", "Milk"]
//Because all values in the array literal are of the same type, Swift can infer that [String] is the correct type to use for the shoppingList variable.
print("The shopping list contains \(ShoppingList.count) items")
//isEmpty is boolean property
if ShoppingList.isEmpty{
    print("the shopping list is empty")
}else{
    print("the shopping list is not empty")
}
//add new item to the end of the array
ShoppingList.append("Flour")
ShoppingList += ["Baking Powder"]
ShoppingList += ["chocolate", "cheese", "butter"]
var firstItem = ShoppingList[0] //The first item in the array has an index of 0, not 1. Arrays in Swift are always zero-indexed.
ShoppingList[0] = "six eggs" //use subscript syntax to change an existing value at a given index
//use subscript syntax to change a range of values at once, even different range
ShoppingList[4...6] = ["Bananas","Apples"] // now contain 6 items
// insert an item at specific index
ShoppingList.insert("Maple Syrup", at: 0) // now contain 7 items
//remove(at:_) remove an item
let MapleSyrup = ShoppingList.remove(at: 0) // now contain 6 items; MapleSyrup constant equal to "Maple Syrup"
firstItem = ShoppingList[0]//Any gaps in an array are closed when an item is removed, and so the value at index 0 is once again equal to "Six eggs"
let apples = ShoppingList.removeLast() // contain 5 items; the apples constant is now equal to the removed "Apples" string
// print with for-in loop
for item in ShoppingList{
    print(item)
}
for (index, value) in ShoppingList.enumerated(){
    print("Item \(index + 1): \(value)")
}

//Set is written as Set<Element>
// doesn't care about the order of the item, or ensure the item only appear once use "set"
// Hash value & set: if a == b, it follows that a.hashValue == b.hashValue.
// All of Swift’s basic types (such as String, Int, Double, and Bool) are hashable by default
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items ")
letters.insert("a")
letters = [] // same as arrary. an already typed variable or constant, you can create an empty set with an empty array literal
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"] //favoriteGenres has been initialized with three initial items
var FavoriteGenres: Set = ["Rock", "Classical", "Hip hop"] //all values in the array literal are of the same type, Swift can infer that Set<String> is the correct type
// accessing and modified a set
print("I have \(FavoriteGenres.count) favorite music genres.")
if FavoriteGenres.isEmpty{
    print("As far as music goes, I'm not picky")
}else{
    print("I have particular music preferences. ")
}
FavoriteGenres.insert("Jazz") // contain 4 items
if let removeGenre = FavoriteGenres.remove("Rock"){ //different from array; contains 3 items
    print("\(removeGenre)? I'm over it")
}else{
    print("I never much cared for that")
}
if FavoriteGenres.contains("Funk"){
    print("I get up on the good foot.")
}else{
    print("It's too funky in here.")
}
// iterate over the values in a set with a for-in loop
for genre in FavoriteGenres{
    print("\(genre)")
}
// To iterate over the values of a set in a specific order
for genre in FavoriteGenres.sorted(){
    print("\(genre)")
}
// combine 2 set: a.intersection(b) 交集；a.symmetricDifference(b) A并B-A交B；a.union(b) 并集； a.subtracting(b) A-A交B
let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]
oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
//superset;subset;disjoint
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubset(of: farmAnimals) //boolean
farmAnimals.isSuperset(of: houseAnimals) //boolean
farmAnimals.isDisjoint(with: cityAnimals) //boolean

//Dictionaries: Dictionary<key, value>
var namesOfIntegers = [Int: String]()
