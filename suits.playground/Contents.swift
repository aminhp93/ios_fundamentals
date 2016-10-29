//: Playground - noun: a place where people can play

import UIKit

let suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
let cards = [1,2,3,4,5,6,7,8,9,10,11,12,13]
var deckOfCards = [String:[Int]]()

for i in suits{
    deckOfCards[i] = cards
}
//deckOfCards.sorted(by: {$0.1 < $1.1})
deckOfCards.map{return $0.0}
print(deckOfCards)

var n = [0,2,3,3,10,2]
n.sort{
    return $0 < $1
}
