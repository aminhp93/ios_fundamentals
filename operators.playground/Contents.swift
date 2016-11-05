//: Playground - noun: a place where people can play

import UIKit

let fourPointOne:Float = 4.1
let d = fourPointOne/2

let two = 2

4.1/Double(two)

var a:UInt8 = UInt8.max
var b:UInt8 = UInt8.min
var c:UInt8 = 200

var hello = "hello"
let world = "world"
let greeting = hello + world

//: ## Ternary Conditional

let name = "Charlotte"
let salutation = name.isEmpty ? "Hello" : "Hi\(name)"
name.isEmpty ? print("No name givin") : print("Else")

//: ## nil Coalescing
let defaultSize = "M"
var selectedSize:String?
let order = selectedSize ?? defaultSize

let rangeA = 0..<10
//0...10 == 0..<11

var palindrome = "A man a plan a canal Panama"
//palindrome.isPalindrome()

let startIndex = palindrome.index(palindrome.startIndex, offsetBy:13)
let endIndex = palindrome.index(palindrome.endIndex, offsetBy:-8)
let replacement = "a cat a ham a yak a yam a hat a canal"
let range = startIndex...endIndex
palindrome.replaceSubrange(range, with: replacement)

//: ## Using Type Checking & Casting Operators

class ClassA{
    var item1 = 29349
}
class ClassB:ClassA{
    var item2 = "SY"
}

let aa = ClassA()
let bb = ClassB()

let arrayOfClass = [aa, bb]
let item1 = arrayOfClass[0]
item1.item1
let item2 = arrayOfClass[1]
item2 is ClassB
let classBInstance = item2 as! ClassB
classBInstance.item2

let classBActingAsClassA = classBInstance as ClassA
classBActingAsClassA.item1

class ClassC{}
let arrayOfAny:[Any] = [aa, bb, ClassC()]
let definitely = arrayOfAny[0] as! ClassA

let maybe = arrayOfAny[0] as? ClassA
maybe?.item1

(arrayOfClass[1] as? ClassB)?.item2

//: ## Using Bitwise Operators

let ten = 0b1010
let one = 0b1
let two1 = one << 1
let four = one << 2
let sixteen = one << 4
let eight = sixteen >> 1
let zero:UInt8 = 0b000000
~zero
let aaa = 0b111100
let bbb = 0b001111

aaa & bbb // 001100
aaa | bbb // 111111

let option1 = 0b0001
let option2 = 0b0010
let option3 = 0b0100

option1 | option2 | option3 // 111

let cc = 0b1001
let dd = 0b0101

cc^dd



























