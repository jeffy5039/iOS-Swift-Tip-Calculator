//
//  ViewController.swift
//  Calculate Tips
//
//  Created by jordan on 24/11/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mealCostTextField: UITextField!
    @IBOutlet weak var tipPercentageTextField: UITextField!
    @IBOutlet weak var ansLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool
    {
        textField.resignFirstResponder()
        return true;
    }

    @IBAction func CalculateTipButton(sender: AnyObject) {
        ansLabel.text = "$" + calculateTip()
        ansLabel.hidden = false
        mealCostTextField.text = ""
        tipPercentageTextField.text = ""
    }
    
    func calculateTip() -> NSString {
        var mealCost: NSString = mealCostTextField.text
        let mealCostAsDouble = mealCost.doubleValue
        var tipPercent: NSString = tipPercentageTextField.text
        let tipPercentAsDouble = tipPercent.doubleValue / 100
        
        var answer = mealCostAsDouble * tipPercentAsDouble
        return NSString(format: "%0.2f", answer)
    }

}

