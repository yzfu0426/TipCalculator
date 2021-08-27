//
//  AdvancedViewController.swift
//  Prework
//
//  Created by Yuzhu Fu on 2021/8/26.
//

import UIKit

class AdvancedViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountPercentage: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
   
    
    @IBAction func calculateTip(_ sender: UISlider) {
        
        
        let tipPercentage = sender.value
        let bill = Float(billAmountTextField.text!) ?? 0
        
        
        
        let formattedPer = Int(tipPercentage * 100)
        let forPer = Float(Float(formattedPer) / 100)
        
        let tip = bill * forPer
        let total = bill + tip
        
        tipAmountPercentage.text = String("\(formattedPer)%")
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
