//
//  ViewController.swift
//  ninja_gold
//
//  Created by Minh Pham on 11/1/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var farmLabel: UILabel!
    
    @IBOutlet weak var caveLabel: UILabel!
    
    @IBOutlet weak var houseLabel: UILabel!
    
    @IBOutlet weak var casinoLabel: UILabel!
    
    
    var total_score = 0
    
    @IBAction func farmButton(_ sender: UIButton) {
        if sender.tag == 1{
            let a = Int(arc4random_uniform(UInt32(10))) + 10
            total_score += a
            farmLabel.text = "You earned " + String(a)
    
            caveLabel.text = ""
            houseLabel.text = ""
            casinoLabel.text = ""
        } else if sender.tag == 2 {
            let b = Int(arc4random_uniform(UInt32(5))) + 5
            total_score += b
            caveLabel.text = "You earned " + String(b)
            farmLabel.text = ""

            houseLabel.text = ""
            casinoLabel.text = ""
        } else if sender.tag == 3 {
            let c = Int(arc4random_uniform(UInt32(3))) + 2
            total_score += c
            houseLabel.text = "You earned " + String(c)
            farmLabel.text = ""
            caveLabel.text = ""

            casinoLabel.text = ""
        } else if sender.tag == 4 {
            let d = Int(arc4random_uniform(UInt32(100))) - 50
            total_score += d
            if d > 0{
                casinoLabel.text = "You earned " + String(d)
            } else {
                casinoLabel.text = "You lost " + String(d)
            }
            farmLabel.text = ""
            caveLabel.text = ""
            houseLabel.text = ""

        } else if sender.tag == 5 {
            total_score = 0
            farmLabel.text = ""
            caveLabel.text = ""
            houseLabel.text = ""
            casinoLabel.text = ""
        }
        score.text = String(total_score)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

