//: Playground - noun: a place where people can play

import UIKit

//: ## Using For & ForIn

let people = ["man": "1", "man2": "2"]

for i in 0..<10{
    print(i)
}

for var i in 1...3{
    i *= 2
}

for i in (1...3).reversed(){
    print(i)
}

for _ in 0..<3{
    print("I will note waste chalk")
}

for i in stride(from:3, to:30, by:3){
    print(i)
}

for i in stride(from:10, to:1, by:-1){
    print(i, terminator: " ")
}

for (i, c) in "SWIFTS".characters.enumerated(){
    for j in 0..<i{
        print("\t", terminator: "")
    }
    print("\(c)\n", terminator: "")
}

let phrases = ["A couple", "A few or soem", "Severla or many"]

for t in phrases.enumerated(){
    print("For \(t.0 + 2) you can say, \"\(t.1).\"")
}


while arc4random_uniform(6) + 1 != 1 && arc4random_uniform(6) + 1 != 1{
    print(".", terminator: "")
}
print("Snake eyes")

//: ## Repeat-While

repeat{
    print(".", terminator: "")
} while arc4random_uniform(6) + 1 != 1 && arc4random_uniform(6) + 1 != 1


print("Snake eyes")

//: ## Using If & If-else
let testScore = arc4random_uniform(50) + 50

if testScore >= 70{
    print("You passed")
} else {
    print("try again")
}
print("Your grade \(testScore)", terminator: "")

if #available(iOS 0, OSX 10.11, watchOS 2.0, *){
    //Use applicable API from iOS 9
} else {
    // use earlier API
}
//: ## Optional Binding

var firstName: String? = "Betty"

if let firstName = firstName{
    print("hello, \(firstName)")
} else {
    print("Welcome guest")
}

var lastName:String? = "Minh"
if let firstName = firstName, let lastName = lastName{
    print("hello, my name is \(firstName) \(lastName)")
} else {
    print("Welcome guest")
}

if var firstName = firstName, var lastName = lastName{
    firstName = firstName.uppercased()
    lastName = lastName.uppercased()
    print("hello, my name is \(firstName) \(lastName)")
} else {
    print("Welcome guest")
}

//: ## Using Guard

let twentyOneBirthday = NSDate().addingTimeInterval(-31_536_000 * 21)
let a = NSDate().addingTimeInterval(-31_536_000 * 19)
// quick and dirty approach - not for production
let b = NSDate().addingTimeInterval(-31_536_000 * 28)
let c = NSDate().addingTimeInterval(-31_536_000 * 20)

let peopleInLine = ["a": a, "b": b, "c": c]

for (name, birthday) in peopleInLine{
    guard birthday.earlierDate(twentyOneBirthday as Date) == birthday as Date
    else{
        print("\(name) is not old enough to enter the club")
        continue
    }
    print("\(name) can enter")
}

func update(lifeguardOnDuty: String?){
    guard let lifeguardName = lifeguardOnDuty else {
        print("no lifeguard on duty")
        return
    }
    print("lifeguard on dut y: \(lifeguardName)")
}
update(lifeguardOnDuty: nil)
update(lifeguardOnDuty: "MINHDFS")















