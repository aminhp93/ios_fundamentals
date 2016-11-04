//
//  ViewController.swift
//  demo1
//
//  Created by Minh Pham on 11/3/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input1: UILabel!
    
    @IBOutlet weak var input2: UITextField!
    @IBAction func button(_ sender: UIButton) {
        print("afasd")
        input1.text = "fasdf"
        input1.text = input2.text
        
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

