//
//  ViewController.swift
//  first_project
//
//  Created by Minh Pham on 11/2/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func didTapButton(_ sender: UIButton) {
        myLabel.text = "Changes with Code"
    }
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var myLabel2: UILabel!
    
    @IBAction func button(_ sender: UIButton) {
        let name = myTextField.text!
        myLabel2.text = "Hi \(name)"
        myTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.resignFirstResponder()
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // myTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

