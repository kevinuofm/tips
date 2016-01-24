//
//  ViewController.swift
//  tips
//
//  Created by Kevin Zhu on 1/23/16.
//  Copyright © 2016 Kevin Zhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


        
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex] // turns the selector into an index number of the array tipPercentages and gets the right percentage.
        
        let billAmount = Double(billField.text!)
        // print(billAmount)
        
        let tip = billAmount! * tipPercentage // calculates tip.
        
        let total = billAmount! + tip

        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        
    }

}

