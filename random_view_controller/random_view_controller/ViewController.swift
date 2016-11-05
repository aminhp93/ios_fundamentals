//
//  ViewController.swift
//  random_view_controller
//
//  Created by Minh Pham on 11/5/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var arrayOfNames = [String]()
    
    @IBAction func buttonPress(_ sender: Any) {
        let numberOfNames = UInt32(arrayOfNames.count)
        let randomNumber = Int(arc4random_uniform(numberOfNames))
        let vcName = arrayOfNames[randomNumber]
        
        let vc = storyboard?.instantiateViewController(withIdentifier: vcName)
        
        
        self.present(vc!, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        arrayOfNames = ["first", "second", "third"]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

