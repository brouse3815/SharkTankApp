//
//  ViewController.swift
//  SharkTankApp
//
//  Created by Brian Rouse on 7/1/17.
//  Copyright © 2017 Brian Rouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input2: UITextField!
    
    
    
    

    override func viewDidLoad() {
        label.isHidden = true
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Toggle Show/Hide Keyboard after selections
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    


    @IBAction func Eval(_ sender: UIButton) {
        
        let numberFormatter: NumberFormatter = {
            let nf = NumberFormatter()
            nf.numberStyle = .currency
            nf.minimumFractionDigits = 0
            nf.maximumFractionDigits = 1
            return nf
        }()
        
        label.isHidden = false
        let firstValue = Int(input1.text!)
        let secondValue = Int(input2.text!)
        
        if firstValue == nil {
            label.text = "ENTER INVESTMENT REQUESTED!"
        }
        else if secondValue == nil {
            label.text = "ENTER PERCENTAGE OFFERED"
        }
        else{
            let outputValue = Int(firstValue! / secondValue! * 100)
            label.text = numberFormatter.string(from: NSNumber(value: outputValue))
        
    }
  }
}
