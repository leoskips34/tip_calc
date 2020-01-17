//
//  ViewController.swift
//  tip_calc
//
//  Created by Leo Samuelson on 1/1/20.
//  Copyright © 2020 NDNU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
       super.viewDidLoad()

       // Sets the title in the Navigation Bar
       self.title = "Tip Calculator"

    }
   
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calcualteTip(_ sender: Any) {
        
        //Get the bill now
        let bill = Double(billField.text!) ?? 0
        
        //Calculate the bill
        let tipPercentages = [0.15, 0.17, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

