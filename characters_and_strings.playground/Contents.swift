//: Playground - noun: a place where people can play

import UIKit
import Foundation

//: ## Understanding Unicode

let circleA:Character = "\u{61}\u{301}\u{20DD}"
let circleB:Character = "\u{E1}\u{20DD}"
circleA == circleB

//: ## Working with strings
let quote = "In the end"
var newQuote = quote
newQuote = "In the start"
print(quote)

let shape = "circle"
let radius = 5.0
let area = M_PI * radius * radius

print("The area of a \(shape) with a radius of \(radius) is \(area)")
print(String(format:"The area of a %@ with a radius of %.0f is %.2f", shape, radius, area))

//: ## Inspecting
let quotes:String = "In the end start"
quotes.hasPrefix("In")
quotes.hasSuffix("start")
quotes.uppercased()
quotes.lowercased()
quote.characters.count
quote.startIndex
quote.endIndex

let firstChar = quotes[quotes.startIndex]

var quote2:String = "In the end, we only regret the chances"
//quote2.insert("HELLO", at: quote2.endIndex)

















