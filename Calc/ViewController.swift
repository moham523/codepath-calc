//
//  ViewController.swift
//  Calc
//
//  Created by Mohamed Suliman on 08/28/2022
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
  
    @IBOutlet weak var tipControl: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Calc(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip *tip%
        let tipPrecentages = [0.15,0.18,0.2]
        let tip = bill *
        tipPrecentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip amount Label
        
        tipAmountLabel.text = String(format: "$%.2f",tip)
        // Update total amount
        TotalLabel.text = String(format: "$%.2f",total)
        
    }
    
}

