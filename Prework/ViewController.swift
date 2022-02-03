//
//  ViewController.swift
//  Prework
//
//  Created by Yong Seok Lee on 2/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!

    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipPercentage: UILabel!
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Float(billAmountTextField.text!) ?? 0

        
        let tipPercentages = tipSlider.value
        tipPercentage.text = String(format: "%.0f%%", tipPercentages * 100)
        
        
        let tip = bill * tipPercentages
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
    @IBAction func calculateTipSlider(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

