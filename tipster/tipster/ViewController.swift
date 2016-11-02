//
//  ViewController.swift
//  tipster
//
//  Created by Minh Pham on 11/1/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amount: UILabel!
    
    @IBOutlet weak var percent1: UILabel!
    
    @IBOutlet weak var tip1: UILabel!
    
    @IBOutlet weak var total1: UILabel!
    
    @IBOutlet weak var percent2: UILabel!
    
    @IBOutlet weak var tip2: UILabel!
    
    @IBOutlet weak var total2: UILabel!
    
    @IBOutlet weak var percent3: UILabel!
    
    @IBOutlet weak var tip3: UILabel!
    
    @IBOutlet weak var total3: UILabel!
    
    @IBAction func button(_ sender: UIButton) {
        if amount.text == "0"{
            amount.text = ""
        }
        if sender.tag != 10 && sender.tag != 11 && sender.tag != 12{
            amount.text = amount.text! + String(sender.tag)
            let a:Double = Double(amount.text!)!
            
            tip1.text = NSString(format: "%.2f", a*Double(percent1.text!)!) as String
            total1.text = NSString(format: "%.2f", a*(1.00 + Double(percent1.text!)!)) as String
            tip2.text = NSString(format: "%.2f", a*Double(percent2.text!)!) as String
            total2.text = NSString(format: "%.2f", a*(1.00 + Double(percent2.text!)!)) as String
            tip3.text = NSString(format: "%.2f", a*Double(percent3.text!)!) as String
            total3.text = NSString(format: "%.2f", a*(1.00 + Double(percent3.text!)!)) as String

        }
        if sender.tag == 11{
            print(amount.text!)
            amount.text = amount.text! + "0"
        }
        if sender.tag == 12{
            print(amount.text!)
            amount.text = amount.text! + "."
        }
        if sender.tag == 10{
            amount.text = ""
            tip1.text = "0.00"
            total1.text = "0.00"
            tip2.text = "0.00"
            total2.text = "0.00"
            tip3.text = "0.00"
            total3.text = "0.00"
        }
    }
    
    
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBAction func tipSlide(_ sender: UISlider) {
        
        if sender.tag == 13 {
            
            sender.minimumValue = 1
            sender.maximumValue = 10
            
            let currentValue:Float = Float(sender.value)
            
            percent1.text = NSString(format: "%.2f", currentValue + 0.02) as String
            percent2.text = NSString(format: "%.2f", currentValue + 0.06) as String
            percent3.text = NSString(format: "%.2f", currentValue + 0.10) as String
            
            let a:Double = Double(amount.text!)!
            
            tip1.text = NSString(format: "%.2f", a*Double(percent1.text!)!) as String
            total1.text = NSString(format: "%.2f", a*(1.00 + Double(percent1.text!)!)) as String
            tip2.text = NSString(format: "%.2f", a*Double(percent2.text!)!) as String
            total2.text = NSString(format: "%.2f", a*(1.00 + Double(percent2.text!)!)) as String
            tip3.text = NSString(format: "%.2f", a*Double(percent3.text!)!) as String
            total3.text = NSString(format: "%.2f", a*(1.00 + Double(percent3.text!)!)) as String
        } else if sender.tag == 14 {
            
            
            sender.minimumValue = 0.01
            sender.maximumValue = 0.05
            
            let currentValue:Double = Double(sender.value)
            
            let a:Double = Double(amount.text!)!
            
            tip1.text = NSString(format: "%.2f", a*(currentValue + Double(percent1.text!)!)) as String
            total1.text = NSString(format: "%.2f", a*(1.00 + currentValue + Double(percent1.text!)!)) as String
            tip2.text = NSString(format: "%.2f", a*(currentValue + Double(percent2.text!)!)) as String
            total2.text = NSString(format: "%.2f", a*(1.00 + currentValue + Double(percent2.text!)!)) as String
            tip3.text = NSString(format: "%.2f", a*(currentValue + Double(percent3.text!)!)) as String
            total3.text = NSString(format: "%.2f", a*(1.00 + currentValue + Double(percent3.text!)!)) as String

        }
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

