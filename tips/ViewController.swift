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
    
    @IBOutlet weak var movingView: UIView!
    @IBOutlet weak var split2: UILabel!
    @IBOutlet weak var split3: UILabel!
    
    @IBOutlet weak var split4: UILabel!
    
    @IBOutlet weak var split5: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billField.becomeFirstResponder() // makes the keyboard pop up upon load! Yay!
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanged2(sender: AnyObject) {
        UIView.animateWithDuration(1) { () -> Void in
            self.movingView.center.y = 280      // this moves the movingView.
            //self.movingView.frame.orgin.y = -XXX
        }
        
        UIView.animateWithDuration(1) { () -> Void in
            self.billField.center.y = 80  // moves the billField
        }
        
     //   billField.text = String(format: "$%", billField.text!)

        
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
        
        split2.text = "$\(total/2)" // calculate and display split with 2 people. 
        split3.text = "$\(total/3)" // calculate and display split with 2 people.
        split4.text = "$\(total/4)" // calculate and display split with 2 people.
        split5.text = "$\(total/5)" // calculate and display split with 2 people.
        
        split2.text = String(format: "$%.2f", total/2) //formats the text to 2 decimals and adds a dollar sign in front.
        split3.text = String(format: "$%.2f", total/3)
        split4.text = String(format: "$%.2f", total/4)
        split5.text = String(format: "$%.2f", total/5)

        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        
    }

}

