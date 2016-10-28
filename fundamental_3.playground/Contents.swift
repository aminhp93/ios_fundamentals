//: Playground - noun: a place where people can play

import UIKit

// Write a program that adds the numbers 1-255 to an array
var result:[Int] = [Int]()

for i in 1...255{
    result.append(i)
}
print(result)

// Swap two random values in array
var index1 = Int(arc4random_uniform(UInt32(result.count)))
var index2 = Int(arc4random_uniform(UInt32(result.count)))

for i in result{
    let temp = result[index1]
    result[index1] = result[index2]
    result[index2] = temp
}
print(result)

// Write the code that swaps random vlaues 100 times
for i in 1...100{
    index1 = Int(arc4random_uniform(UInt32(result.count)))
    index2 = Int(arc4random_uniform(UInt32(result.count)))
    
    let temp = result[index1]
    result[index1] = result[index2]
    result[index2] = temp
}
print(result)

// Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life, the Univers, adn Everything at index __" and print the index of where "42" was before you removed it.

for i in 0...(result.count-1){
    if (result[i] == 42){
        print("We found the answer to the Ultimate Question of Life, the Univers, adn Everything at index \(i)")
    }
}