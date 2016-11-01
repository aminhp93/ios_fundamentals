//: Playground - noun: a place where people can play

import UIKit

//class Person{
//    var species = "Sapiens"
//    var name:String
//    init(name:String){
//        self.name = name
//    }
//    func speak(){
//        print("HEll")
//    }
//}
//
//class Developer:Person{
//    var favoriteLanguage:String
//    init(name:String, favoriteLanguage:String){
//        self.favoriteLanguage = favoriteLanguage
//        super.init(name:name)
//    }
//    override func speak() {
//        print("HEllo \(self.name)")
//    }
//}
//var dev:Developer = Developer(name:"Jay", favoriteLanguage:"Swift")
//dev.speak()

class Animal{
    var name:String
    var health:Int
    
    init(name:String, health:Int){
        self.name = name
        self.health = 100
    }
    
    func displayHealth() -> Int{
        return self.health
    }
}

class Cat:Animal{
    init(health:Int, name:String){
        super.init(name:name, health:health)
    }
    
    func growl(){
        print("Raw")
    }
    
    func run(){
        self.health -= 10
    }
}

class Cheetah:Cat{
    override init(health:Int, name:String){
        super.init(health:health, name:name)
    }
    override func run(){
        self.health -= 50
    }
    
    func sleep(){
        if (self.health < 200){
            self.health += 50
        }
    }
}

class Lion:Cat{
    override init(health:Int, name:String){
        super.init(health:health, name:name)
        self.health = 200
    }
    
    override func growl() {
        print("ROAR")
    }
}

var cheetah:Cheetah = Cheetah(health: 104, name: "minh1")
cheetah.health = 1303
cheetah.health
cheetah.name

cheetah.run()
cheetah.run()
cheetah.run()
cheetah.run()

cheetah.health

var lion:Lion = Lion(health: 399, name: "MINH")
lion.health
lion.run()
lion.run()
lion.run()
lion.growl()



