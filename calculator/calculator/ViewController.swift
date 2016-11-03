//
//  ViewController.swift
//  calculator
//
//  Created by Minh Pham on 11/2/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var store:[String] = []
    var final:Double = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func numberButton(_ sender: UIButton) {
        if resultLabel.text == "0" {
            resultLabel.text = ""
        }

        resultLabel.text = resultLabel.text! + String(sender.tag)
    }
    
    @IBAction func dotButton(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "."
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        //resultLabel.text = resultLabel.text! + "+"
        store += [resultLabel.text!]
        final += Double(resultLabel.text!)!
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        //resultLabel.text = resultLabel.text! + "-"
        store += [resultLabel.text!]
        final -= Double(resultLabel.text!)!
    }
    
    @IBAction func cancelButton(_ sender: UIButton) {
        resultLabel.text = "0"
        store = []
    }
    
    @IBAction func resultButton(_ sender: UIButton) {
        /*
        print(store)
        final = Double(store[0])!
        for i in 0...(store.count - 1){
            if store[i] == "+"{
                final += Double(store[i + 1])!
            }
            if store[i] == "-"{
                final -= Double(store[i + 1])!
            }
        }
        */
        resultLabel.text = String(final)
        store = [String(final)]
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

