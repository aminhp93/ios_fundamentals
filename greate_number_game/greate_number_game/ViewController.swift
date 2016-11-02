//
//  ViewController.swift
//  greate_number_game
//
//  Created by Minh Pham on 11/2/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    
    var number:Int = Int(arc4random_uniform(101))
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton) {
        print(number)
        print(textField.text!)
        if Int(textField.text!) != nil{
            let a = Int(textField.text!)!
            if a == number {
                let alertController = UIAlertController(title: "Right", message: "You are lucky", preferredStyle: .alert)
                
                let OKAction = UIAlertAction(title: "Play again", style: .default) { (action:UIAlertAction!) in
                    self.number = Int(arc4random_uniform(101))
                    // Code in this block will trigger when OK button tapped.
                    print("Ok button tapped");
                    
                }
                
                alertController.addAction(OKAction)
                
                self.present(alertController, animated: true, completion:nil)
            } else if a > number{
                let alertController = UIAlertController(title: "Wrong", message: "Too high", preferredStyle: .alert)
                
                alertController.view.tintColor = UIColor.red
                
                let OKAction = UIAlertAction(title: "Guess again", style: .default) { (action:UIAlertAction!) in
                    
                    // Code in this block will trigger when OK button tapped.
                    print("Ok button tapped");
                    
                }
                
                alertController.addAction(OKAction)
                
                self.present(alertController, animated: true, completion:nil)
            } else if a < number {
                let alertController = UIAlertController(title: "Wrong", message: "Too low", preferredStyle: .alert)
                alertController.view.tintColor = UIColor.red

                let OKAction = UIAlertAction(title: "Guess again", style: .default) { (action:UIAlertAction!) in
                    
                    // Code in this block will trigger when OK button tapped.
                    print("Ok button tapped");
                    
                }
                
                alertController.addAction(OKAction)
                
                self.present(alertController, animated: true, completion:nil)
            }
        } else {
            let alertController = UIAlertController(title: "Wrong", message: "Invalid input", preferredStyle: .alert)
            alertController.view.tintColor = UIColor.red
            
            let OKAction = UIAlertAction(title: "Guess again", style: .default) { (action:UIAlertAction!) in
                
                // Code in this block will trigger when OK button tapped.
                print("Ok button tapped");
                
            }
            
            alertController.addAction(OKAction)
            
            self.present(alertController, animated: true, completion:nil)
        }
        textField.text = ""
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

