//: Playground - noun: a place where people can play

import UIKit

class Person{
    var species = "Sapiens"
    let species2 = "Minh"
    func speak(){
        print("HEllo I am a \(self.species)")
    }
}
var myPerson: Person = Person()
print("\(myPerson.species)")
myPerson.species = "Homo Sapiens"
print("\(myPerson.species)")
//myPerson.species2 = "M"
myPerson.speak()

class User{
    var intelligence = 0
    func study(topic:String, hours:Int){
        print("I am studying \(topic) for \(hours)")
    }
}
var user = User()
user.study(topic: "Math", hours: 12)

class Person1{
    var species = "MIH"
    var name:String
    init(name:String){
        self.name = name
    }
    func speak(){
        print("Hello \(self.species) and my name is \(self.name)")
    }
}
var new:Person1 = Person1(name: "Jay")
new.speak()


// Structs
struct Rectangle{
    var width = 10
    var height = 20
    func printDesc(){
        print("I have a width of \(width) and height of \(height)")
    }
    mutating func doubleWidth(){
        width * 2
    }
}
var myRectangle = Rectangle()
print("\(myRectangle.width)")
let rectangle = Rectangle()

struct Rectangle1{
    var w: Int
    var h: Int
}
let rectangle1 = Rectangle1(w: 100, h: 200)

class Person2{
    var fullname: String
    init(name:String){
        self.fullname = name
    }
    func introduce(){
        print("Hi my name is \(self.fullname)")
    }
}
var j = Person2(name: "Ketul Patel")
var k = j

j.introduce()
k.fullname = "Ketul J Patel"
j.introduce()

var square1 = Rectangle1(w: 10, h: 20)
var square2 = square1

print("square1 width \(square1.w), square2 width \(square2.w)")

square2.w = 30
square2.h = 40
print("square1 width \(square1.w), square2 widht \(square2.w)")








