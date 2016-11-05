//: [Previous](@previous)

import Foundation

var str = "Hello, playground"



var hello = "Hello"; var playground = "playground"

print(str)
NSLog(str)
print(hello, playground)
print(hello, playground, separator: "_", terminator: "")

print("\(hello) viewer")
print("1 + 1 = \(1+1)")

for i in 0..<64{
    var point = sin(Double(i) * 100)
}

func printLiteralExpression(){
    print("Function: \(#function)")
    print("File: \(#file)")
    print("Function: \(#line)")
    print("Function: \(#column)")
}
 

printLiteralExpression()
//: [Next](@next)

//:1.LearnSwift
//:2.Develope a n
//:3.Retire

/// A quick help comment

var foo = Foo()
var bar = Bar()
var bas = Bas()

print(bas.addressee)
bas.addressee = "viewer"

bas.sayHello()
bas.sayHelloTo(addressee: bas.addressee)

foo
    .bar
    .bas
    .sayHello()
 










