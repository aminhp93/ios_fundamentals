//
//  ViewController.swift
//  to_do_list
//
//  Created by Minh Pham on 11/3/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtInput: UITextField!
    
    @IBOutlet weak var txtOutput: UITextView!
    
    var items:[String] = []
    
    @IBAction func addItem(_ sender: UIButton) {
        if (txtInput.text! == ""){
            return
        }
        items.append(txtInput.text!)
        txtOutput.text = ""
        for item in items{
            txtOutput.text.append("\(item)\n")
        }
        txtInput.text = ""
        txtInput.resignFirstResponder()
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

