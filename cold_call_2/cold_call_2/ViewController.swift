//
//  ViewController.swift
//  cold_call_2
//
//  Created by Minh Pham on 11/1/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var names = ["Harvey", "Devan", "Phil", "Carmen", "Annet", "Jill"]
    var count = 0
    
    @IBAction func callButton(_ sender: UIButton) {
        if count < names.count - 1{
            count += 1
        } else {
            count = 0
        }
        nameLabel.text = names[Int(arc4random_uniform(UInt32(names.count)))]
        numberLabel.text = String(arc4random_uniform(UInt32(names.count)))
        
        let r = Double((arc4random_uniform(UInt32(256))))/255.0
        let b = Double((arc4random_uniform(UInt32(256))))/255.0
        let g = Double((arc4random_uniform(UInt32(256))))/255.0

        
        nameLabel.textColor = UIColor(displayP3Red:CGFloat(r), green: CGFloat(g), blue:CGFloat(b), alpha:1.0)
        numberLabel.textColor = UIColor(displayP3Red:CGFloat(b), green: CGFloat(g), blue:CGFloat(r), alpha:1.0)
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

