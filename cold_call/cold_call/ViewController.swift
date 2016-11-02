//
//  ViewController.swift
//  cold_call
//
//  Created by Minh Pham on 11/1/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    
    var names = ["Carmen", "Phil", "Harvey", "Devan", "Annet", "Jill"]
    
    @IBAction func callButton(_ sender: UIButton) {
        name.text = names[Int(arc4random_uniform(UInt32(names.count)))]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.text = "Minh"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

