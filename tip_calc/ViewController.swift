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

    
    override func viewWillAppear( animated: Bool) {
        
        super.viewWillAppear(animated)
        print("view will appear")
        try defaults = NSUserDefaults.standardUserDefaults()
        //catch NSException {print("caught")}
        let tippers = defaults.doubleForKey("percent")
        tipControl.selectedSegmentIndex = defaults.integerForKey("index")
        let bill = Double(billField.text!) ?? 0
        let tip = (bill * tippers)
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    @IBOutlet weak var segView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
        super.view.backgroundColor = UIColor.cyanColor()
        segView.backgroundColor = UIColor.cyanColor()
        let defaults = NSUserDefaults.standardUserDefaults()
        self.tipControl.selectedSegmentIndex = defaults.integerForKey("index")
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
       /* let eighteen = defaults.doubleForKey("eighteen")
        let twenty = defaults.doubleForKey("twenty")
        let twentyFive = defaults.doubleForKey("twenty-five")
        let tipPercentages = [eighteen, twenty, twentyFive]*/
        let tipPercentages = [0.18, 0.20, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = (bill * tipPercentages[tipControl.selectedSegmentIndex])
        let total = bill + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        /*let tippers = defaults.doubleForKey("percent")
        tip = (bill * tippers)
        total = bill + tip*/
     
        }
        
        
        
    }



