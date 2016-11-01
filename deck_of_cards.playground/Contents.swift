//: Playground - noun: a place where people can play

import UIKit

struct Card{
    var value:String
    var suit:String
    var numerical_value:Int
}

class Deck{
    var cards:[Card] = []
    var a:[String] = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    var b:[String] = ["Clubs", "Spades", "Hearts", "Diamonds"]
    
    func start(){
        cards = []
        var count:Int = 0
        for i in a{
            count += 1
            for j in b{
                cards.append(Card(value:j, suit:i, numerical_value:count))
            }
        }
    }
    
    func deal() -> Card{
        let card:Card = cards.remove(at: cards.count - 1)
        print(card)
        return card
    }
    
    func reset(){
        cards = []
        start()
    }
    
    func shuffle(){
        cards = []
        var count:Int = 0
        for _ in 1...(a.count){
            count += 1
            for _ in 1...(b.count){
                cards.append(Card(value:a[Int(arc4random_uniform(UInt32(a.count)))], suit:b[Int(arc4random_uniform(UInt32(b.count)))], numerical_value:count))
            }
        }
    }
}

class Player{
    var name:String
    var hand:[Card] = []
    
    init(name:String){
        self.name = name
    }
    
    func draw(deck:Deck) -> Card{
        let card:Card = deck.cards[deck.cards.count - 1]
        hand.append(card)
        return card
    }
    
    func discard(card:Card) -> Bool{
        for i in 0..<(hand.count){
            if hand[i].value == card.value && hand[i].suit == card.suit{
                hand.remove(at: i)
                return true
            }
        }
        return false
    }
}

var deck:Deck = Deck()
deck.start()
print(deck.cards)
deck.shuffle()
print(deck.cards)
print("===============================")
deck.reset()
print(deck.cards)
deck.deal()
print(deck.cards)








