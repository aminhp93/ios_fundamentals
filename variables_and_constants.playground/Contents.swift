//: Playground - noun: a place where people can play

import UIKit

//: ## Understaning mutability

var str:String = "Hello, playground"

str = "Hello, world"

//:
let 💥 = "AMIN"
let `class` = "GEOMETRY"

//str = 1


//: ## Defining Characters

let aChar:Character = "a"
let bChar = "b" as Character
//let uWithUmlaut: Character = "\u{75} \{308}"

let anInteger = -1_234_567_890
let anUnsignedInteger = UInt(123)

let aDouble = 1.23
let aFloat: Float = 1.23
let aInteger = 5

//aDouble * Double * anadfInteger

let learningSwiftIsFun = false

//: ## Defining Numberic Literals
let binaryTen = 0b1010
let octalTen = 0o12
let hexadecimalTen = 0xA
let twelveMillion = 1.2e7 // 1.2 * 10^7

//: ## Defining Type Aliases
typealias IPOctet = UInt8
let minOCteValue = IPOctet.min
let maxOCteValue = IPOctet.max

//: ## Deferring Value Assignment & Handling nil

var aphorism:String
aphorism = "Do or do not. There is no try"

var one, two, three: Int
one = 1
two = 2
three = 3

let constantString:String

constantString = "Don't wish. Do."

var maybeAsString: String?
print(maybeAsString)
maybeAsString = ""
maybeAsString?.isEmpty
maybeAsString == nil
maybeAsString = "I am a string"
print(maybeAsString!)

var mostLikelyAnInt: Int!
mostLikelyAnInt = 9
print(mostLikelyAnInt)
//maybeAsString = nil
let definiteString = maybeAsString!
























