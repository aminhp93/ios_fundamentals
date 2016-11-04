//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("The maximum value \(Int.max)")
print("The minimum value \(Int.min)")

print("The max value \(Int32.max)")
print("The min value \(Int32.min)")

print("The min value \(UInt32.min)")

var myInt32:Int32 = 3
var myNormalInt:Int = 2

myInt32 = Int32(myNormalInt)

var myDouble = 3.2
var myFloat:Float
myFloat = Float(myDouble)

print("Addition \(1+3)")
print("\(1-3)")
print("\(1*3)")
print("\(1/3)")


// loop from 1 to 5 including 5
for i in 1...5{
    print(i)
}

for i in 1..<5{
    print(i)
}

var start = 0
var end = 5
for i in start...end{
    print(i)
}

for i in start..<end{
    print(i)
}

var i = 1
while i < 6{
    print(i)
    i += 1
}

// Arrays
var toDoList:[Any] = ["Learn iOs", "Build the next Flappy Bird", "Retire in Cancun", 1]
var toDoList1:[String] = [String]()
toDoList1.append("Learn iOS")
toDoList1.append("Build the next Flappy Bird")
toDoList1.append("Retire in Cancun")
print(toDoList1)

var arrayOfInts = [1,2,3,4,5]
print("\(arrayOfInts[1])")
print("\(arrayOfInts[0...3])")

var arr = [1,2,3,4]
arr[0] = 8
print(arr)

var nums = [1,2,3,4]
nums.append(44)
print(nums)

arrayOfInts = [1,2,3,4,5,6]
var popped = arrayOfInts.remove(at:3)
print(popped)
print(arrayOfInts)
arrayOfInts.insert(100, at:3)
arrayOfInts.insert(1000, at: arrayOfInts.count - 1)

var starters = ["S", "af", "asf"]
for starter in starters{
    print(starter)
}

for i in 0..<starters.count{
    print(starters[i])
}

// Optional
var name:String = "Jay"
var pet:String?
pet = "Skippy"

var present:String? = "Apple Watch"

if let unwrappedPresent = present{
    print("OMG THANK you for \(unwrappedPresent)")
}

var present2:String? = "Apple Watch 2"
print("OMG the \(present2!)")

var present3:String! = "Apple Watch 3"
print("\(present3)")
present3 = nil
print("\(present3)")

// Dictionaries
var myDict2:[String: Int]
var myDict3:[String: Int] = [String: Int]()
var myDict4 = [String: Int]()

var dictionary = [
    "Kobe": 24,
    "Lebron": 23,
    "Rondo": 9
]

// var jerseyNumber = dictionary["Kobe"]!
// print(jerseyNumber)

if let jerseyNumber = dictionary["Kobe"]{
    print(jerseyNumber)
}

print(dictionary)
dictionary["Fisher"] = 2
print(dictionary)

dictionary["Lebron"] = nil
print(dictionary)
var lebronNumber = dictionary.removeValue(forKey: "Kobe")
print(lebronNumber)

if let lebronNumber = dictionary.removeValue(forKey: "Rondo"){
    print(lebronNumber)
}

for (key, value) in dictionary{
    print("The key \(key) and hte value is \(value)")
}

for x in dictionary{
    print(x)
}

// Functions
func sayHello(){
    print("Hello how are you doing today")
}
sayHello()

func sayHello(name: String){
    print("Hello, \(name), how are you")
}
sayHello(name: "Minh")

func printDescription(w: Int){
    print("My width is \(w)")
}
printDescription(w: 10)

func printDescription(w: Int, h:Int){
    print("My width is \(w) and height is \(h)")
}
printDescription(w:2, h: 7)

var myInt = 1
func changeMyInt(someInt: Int){
    var someInt = someInt
    someInt += 1
    print(someInt)
}

changeMyInt(someInt: myInt)
print(myInt)

func changeMyInt(someInt: inout Int){
    someInt += 1
    print(someInt)
}

changeMyInt(someInt: &myInt)
print(myInt)

func sayHello1(name:String = "buddy"){
    print("Hey \(name)")
}
sayHello1()
sayHello1(name: "MINH")

func sayHello3(name: String = "buddy") -> String{
    return "Hey \(name)"
}
var greeting: String?
greeting = sayHello3()
print(greeting!)

func calculate(w: Int, andH h: Int) -> Int{
    return w * h
}
var area = calculate(w: 10, andH: 3)
print(area)

func lookFor(dictionary: [String: Int], forKey key:String) -> Int?{
    if let value = dictionary[key]{
        return value
    } else {
        return nil
    }
}
var jersay1 = ["MINH": 5]
var jersay2 = lookFor(dictionary: jersay1, forKey: "MINH")

if let num = jersay2{
    print(num)
}

func findMin(arr: [Int]) -> Int?{
    if arr.count > 0{
        var min = arr[0]
        for num in arr{
            if num < min{
                min = num
            }
        }
        return min
    } else {
        return nil
    }
}

func sayHello4(){
    print("Hello")
}
sayHello4()

func sayHello5() -> (){
    print("Hello")
}
sayHello5()

var wholeNumber = Int("27")
var adsf = Double("asf")

print("adsf".characters.count)
"addasf".components(separatedBy: "")
Array("asdfsfd".characters)



















