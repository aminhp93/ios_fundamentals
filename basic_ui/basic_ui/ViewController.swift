//
//  ViewController.swift
//  basic_ui
//
//  Created by Minh Pham on 11/3/16.
//  Copyright © 2016 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myUIStepper = UIStepper (frame:CGRect(x: 10, y: 150, width: 0, height: 0))
        
        // Resume UIStepper value from the beginning
        myUIStepper.wraps = true
        
        // Position UIStepper in the center of the view
        myUIStepper.center = self.view.center
        
        // If tap and hold the button, UIStepper value will continuously increment
        myUIStepper.autorepeat = true
        
        // Set UIStepper max value to 10
        myUIStepper.maximumValue = 10.1
        
        // Add a function handler to be called when UIStepper value changes
        myUIStepper.addTarget(self, action: #selector(ViewController.stepperValueChanged(_:)), for: .valueChanged)
        
        self.view.addSubview(myUIStepper)
        
        
    }
    func stepperValueChanged(_ sender:UIStepper!)
    {
        print("UIStepper is now \(Double(sender.value))")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

