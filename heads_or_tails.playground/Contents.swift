//: Playground - noun: a place where people can play

import UIKit


func tossCoin() -> String{
    print("Tossing a Coin")
    var result:String
    if (arc4random_uniform(2) == 1){
        result = "Heads"
    } else {
        result = "Tails"
    }
    return result
}
tossCoin()

func tossMultipleCoins(num: Int) -> Double{
    
    var count:Int = 0
    for i in 1...num{
        if (tossCoin() == "Heads"){
            count += 1
        }
    }
    var result:Double = Double(count) / Double(num)
    return result
}

tossMultipleCoins(num: 6)