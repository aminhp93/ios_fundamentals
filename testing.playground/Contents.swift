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


























