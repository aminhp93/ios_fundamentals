//
//  ViewController.swift
//  calculator
//
//  Created by Minh Pham on 11/2/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    var currentNumber:String = ""
    var array = [String]()
    
    @IBAction func numberButton(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + String(sender.tag)
        currentNumber += String(sender.tag)
    }
    
    @IBAction func plus(_ sender: UIButton) {
        array += [currentNumber, "+"]
        currentNumber = ""
        resultLabel.text = resultLabel.text! + "+"
        print(array)
    }
    
    @IBAction func minus(_ sender: UIButton) {
        array += [currentNumber, "-"]
        currentNumber = ""
        resultLabel.text = resultLabel.text! + "-"
    }
    
    
    @IBAction func multiply(_ sender: UIButton) {
        array += [currentNumber, "*"]
        currentNumber = ""
        resultLabel.text = resultLabel.text! + "*"
        print(array)
    }
    
    @IBAction func divide(_ sender: UIButton) {
        array += [currentNumber, "/"]
        currentNumber = ""
        resultLabel.text = resultLabel.text! + "/"
        print(array)
   
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

