//
//  ViewController.swift
//  TTT
//
//  Created by Minh Pham on 11/1/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var winnerLabel: UILabel!
    
    var currentNumber = 0
    var result:[Int:String] = [:]
    var win_point = [[1,2,3],[4,5,6],[7,8,9],[1,5,9],[3,5,7],[2,5,8],[1,4,7],[3,6,9]]
    
    @IBAction func button(_ sender: UIButton) {
        
        
        if currentNumber % 2 == 0 && result[sender.tag] == nil{
            sender.backgroundColor = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
            currentNumber += 1
            result[sender.tag] = "red"
        } else if currentNumber % 2 == 1 && result[sender.tag] == nil{
            sender.backgroundColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
            currentNumber += 1
            result[sender.tag] = "blue"
        }
        for i in win_point{
            if (result[i[0]] == result[i[1]] && result[i[1]] == result[i[2]] && result[i[0]] != nil){
                winnerLabel.text = "won"
            }
        }
        
        /* if (result[1] == result[2] && result[3] == result[2] && result[1] != nil) ||
            (result[4] == result[5] && result[5] == result[6] && result[5] != nil) ||
            (result[7] == result[8] && result[8] == result[9] && result[7] != nil) ||
            (result[1] == result[4] && result[4] == result[7] && result[1] != nil) ||
            (result[2] == result[5] && result[5] == result[8] && result[5] != nil) ||
            (result[3] == result[6] && result[6] == result[9] && result[3] != nil) ||
            (result[1] == result[5] && result[5] == result[9] && result[1] != nil) ||
            (result[3] == result[5] && result[5] == result[7] && result[3] != nil){
            winnerLabel.text = "won"
        }
         */
    }
    
    var button = UIButton()
    @IBAction func resetButton(_ sender: UIButton) {
        result = [:]
        for i in 1...9{
            button = view.viewWithTag(i) as! UIButton
            button.backgroundColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        }
        winnerLabel.text = ""
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

