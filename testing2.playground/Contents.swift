//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let month = 2
let day = 1
let year = 1
let currentDate = Date()
var dateComponent = DateComponents()

dateComponent.month = month
dateComponent.day = day
dateComponent.year = year

let futureDate = Calendar.current.date(byAdding:dateComponent, to: currentDate)

func isValidEmailAddress(emailAddressString: String) -> Bool {
    
    var returnValue = true
    let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
    
    do {
        let regex = try NSRegularExpression(pattern: emailRegEx)
        let nsString = emailAddressString as NSString
        let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
        
        if results.count == 0
        {
            returnValue = false
        }
        
    } catch let error as NSError {
        print("invalid regex: \(error.localizedDescription)")
        returnValue = false
    }
    
    return  returnValue
}

isValidEmailAddress(emailAddressString: "minhpn.org.ec@gmail.com")

let defaults = UserDefaults.standard
defaults.set(14, forKey: "weight")

func checking(array:[String]){
    var result:Double = 0
    for i in 0..<array.count{
        if array[i] == "*"{
            result = Double(array[i-1])! * Double(array[i+1])!
            array[i-1] = String(result)
            
        }
        if array[i] == "/"{
            result = Double(array[i-1])! / Double(array[i+1])!
        }
        if array[i] == "+"{
            result = Double(array[i-1])! + Double(array[i+1])!
        }
        if array[i] == "-"{
            result = Double(array[i-1])! - Double(array[i+1])!
        }
    }
    print(result)
}
checking(array: ["1", "+", "2", "-", "5", "*", "4"])






