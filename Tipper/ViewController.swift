//
//  ViewController.swift
//  Tipper
//
//  Created by Nancy Ng  on 12/19/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var BillLabel: UITextField!
    @IBOutlet weak var TipAmount: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TapOn(_ sender: Any) {
        print("hello")
        view.endEditing(true)
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        //get bill amount
        let bill = Double(BillLabel.text!) ?? 0
        
        
        //calculate tip and total
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip  = bill * tipPercentage[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip and total
        TipAmount.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    }
    
   
}

 
