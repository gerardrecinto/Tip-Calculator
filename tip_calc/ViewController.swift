//
//  ViewController.swift
//  tip_calc
//
//  Created by Gerard Recinto on 12/28/16.
//  Copyright © 2016 Gerard Recinto. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var tipView: UIView!
    
    @IBOutlet weak var billField: UITextField!
  
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
        super.view.backgroundColor = UIColor.cyanColor()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
 
   
    @IBAction func calculateTip(sender: AnyObject) {
        let tipPercentages = [0.18, 0.20, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = (bill * tipPercentages[tipControl.selectedSegmentIndex])
        let total = bill + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

