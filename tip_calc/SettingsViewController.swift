//
//  SettingsViewController.swift
//  tip_calc
//
//  Created by Gerard Recinto on 1/7/17.
//  Copyright © 2017 Gerard Recinto. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController {

    @IBOutlet weak var tippyCtrl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view.backgroundColor = UIColor.lightGray
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(_ sender: AnyObject) {
        
        //Access UserDefaults
        let defaults = UserDefaults.standard
        let tipPercentages = [0.18, 0.20, 0.25]
        defaults.set(tippyCtrl.selectedSegmentIndex, forKey: "index")
        defaults.set( tipPercentages[tippyCtrl.selectedSegmentIndex], forKey: "percent")
        // Force UserDefaults to save.
        defaults.synchronize()
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
