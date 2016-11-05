//: Playground - noun: a place where people can play

import UIKit

//: ## Defining Array
var threeStooges = ["Moe", "Larray", "Curly"]
var inningScores:[Int]
inningScores = []

var testScore = [Double]()
var quizScores:Array<Double> = []

var turnstileCounts = Array(repeatElement("1", count: 3))
var snowboardScores = [Double](repeatElement(10.0, count: 4))

var arrayOfAny:[Any] = [1, 2.0, "three"]

var nilString: String? = nil
var someString = "Some string"

let arrayOfString = [nilString, someString]

var optionalArrayOfString:[String]?
var optionalArrayOfOptionalString:[String?]?

//: ## Inpeacting & Accessing Array

threeStooges.count
threeStooges.isEmpty
threeStooges.contains("Moe")

let larry = threeStooges[1]

let twoStooges = threeStooges[0..<2].sorted()
let moe = threeStooges.first!
let curly = threeStooges.last!

//: ## Modifying Array

var turn = Array(repeatElement(10, count: 4))
turn[2] = 4
turn[0] += 10
turn
var four = threeStooges
four.append("Shemp")

let shemp = four.removeLast()
four.insert(shemp, at: 0)

var allStooges = four + ["Ted", "Emil"]
allStooges += ["Joe Besser", "Joe DeRita"]

print(allStooges)

allStooges.removeSubrange(3...5)
allStooges.sort()

//: ## Nesting Arrays

var famous = [
    threeStooges,
    ["Hey", "ED", "DFA"],
    ["Hey", "ED", "DFA"],
    ["Hey", "ED", "DFA"]
]

let threeMusketeers = famous[2]

let jack = famous[3][0]

famous[3][2] = "Janet"

print(famous.flatMap({ $0 }))

//: ## Defining Dictionaries

var stockPrices = ["AAPL": 110.37, "GOOG": 606.25, "MSFT": 43.5]

var birthYear:[String:Int] = [:]

var raceResults = Dictionary<Int, String>()

let tourDeFrance:[Int: String]
tourDeFrance = [
    1: "Chris",
    2: "Nairo"
]

//: ## Inspecting & Accessing Dictionaries

var ages = Dictionary<String, Int>()

stockPrices.count
ages.isEmpty
Array(stockPrices.keys)
Array(stockPrices.values)

let appleStock = stockPrices["AAPL"]

stockPrices["AMZN"] = 502.4
stockPrices["AAPL"] = 112.34
stockPrices["AMZN"] = nil
print(stockPrices)

stockPrices["DMI"] = 17.25

let dunderMifflin = stockPrices.removeValue(forKey: "DMI")
stockPrices

//: ## Nesting Dictionaries
var bostonMarathonResuts: [Int: [String:String]] = [
    1: [
        "name": "Dessia",
        "country": "ETH",
        "finishingTime": "2:09:17"
    ]
]

let fisrtPlaceName = bostonMarathonResuts[1]?["name"]

//: ## Defining Sets

var teachers = Set<String>()
var staff: Set<String> = []
var students:Set<String> = ["A", "B", "C", "A"]
students.count
students.isEmpty

var arrayOfStudents = Array(students)
arrayOfStudents.sort()
students.contains("B")
var schoolBusStudents:Set = ["K", "D", "C"]
schoolBusStudents.isSubset(of: students)
schoolBusStudents.isStrictSubset(of: students)
students.isSuperset(of: schoolBusStudents)
students.isStrictSuperset(of: schoolBusStudents)

//: ## Performing Set Operations

let campAttendees:Set = ["A", "B", "C"]
var stu:Set = ["C", "D", "F"]

print(stu.intersection(campAttendees))
print(stu.symmetricDifference(campAttendees))
print(stu.union(campAttendees))

//: ## Modifing Sets

stu.insert("J")
//let bob = stu.remove("J")

let indexOfJ = stu.index(of: "J")
stu.remove(at: indexOfJ!)

//: ## Nesting Sets

let stringSet1:Set = ["a", "b", "c"]
let stringSet2:Set = ["d", "e", "f"]
let integerSet:Set = [1,2,3]
let setOfStringSets:Set = [stringSet1, stringSet2]

//let mixed:Set = [stringSet1, stringSet2, integerSet]

//: ## Defining Tuples
let httpStatus200 = (200, "OK")
var numbers:(Int, Float, Double) = (1, 2.3, 3.4)
var httpStatus:(Int, String?)?
var playerScores:([Int], firstName:String, lastName:String?)

playerScores = ([1,2,3], "Scoott", "Gard")

let highScore = playerScores.0.max()

let (score, firstName, lastName) = playerScores
let average = score.reduce(0,+)

let (httpStatusCode, _) = httpStatus200
var another = (100, (firstName: "Scoot", lastName: "Garden"))
let (theScore, name) = another

//: ## Modifying Tuples
another.0 = 98
another.1.firstName = "Lori"














