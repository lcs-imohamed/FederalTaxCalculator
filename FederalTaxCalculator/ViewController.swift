//
//  ViewController.swift
//  FederalTaxCalculator
//
//  Created by Mohamed, Ilana on 2019-11-01.
//  Copyright © 2019 Mohamed, Ilana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK:Properties
    @IBOutlet weak var personName: UITextField!
    @IBOutlet weak var grossAnnualIncome: UITextField!
    @IBOutlet weak var outputTaxOwed: UILabel!
    @IBOutlet weak var outputEffectiveTaxRate: UILabel!
    
    override func viewDidLoad() {
        
        //MARK: Methods
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTax(_ sender: Any) {
        
        //Obtain value from text field
        guard let personNameAsString = personName.text else {
            outputTaxOwed.text = "Please input a value. "
            return
        }
        guard let grossAnnualIncomeAsString = grossAnnualIncome.text else {
            outputTaxOwed.text = "Please input a value."
            return
        }
        //Change to double
        guard let grossAnnualIncomeAsDouble = Double(grossAnnualIncomeAsString) else {
            outputTaxOwed.text = "Please input a numerical value."
            return
        }
        var taxOwedInDollars = 0.0
        
        //Calculate tax
        switch grossAnnualIncomeAsDouble {
            
            
        case 0...47630:
            taxOwedInDollars = 0.15 * grossAnnualIncomeAsDouble
            
            
        case 47631...95259:
            taxOwedInDollars = 0.205 * grossAnnualIncomeAsDouble + 47630 * 0.15
            
        case 95260...147667:
            taxOwedInDollars = 0.26 * grossAnnualIncomeAsDouble + 47628 * 0.205
            
            
        case 147668...210371:
            taxOwedInDollars = 0.29 * grossAnnualIncomeAsDouble + 52407 * 0.26
            
            
        default:
            taxOwedInDollars = 0.33 * grossAnnualIncomeAsDouble + 62703 * 0.33
            
            
            
            
            
            //let taxOwedInDollars = (grossAnnualIncomeAsDouble - //other variable representing other totals)
            //50000 * 0.15 +
            //50000 *0.205+
            // 30000 *0.20 +
            //600000 *0.33
            //2900000-15000
            //65000 gross income
            // 50,000 at 15%
            // find differnce in the ranges and then add
        }
        
        //Display tax owed on label along with name and $.
        outputTaxOwed.text = String(personNameAsString) + " your tax owed is " + "$" + String(taxOwedInDollars)
        
        //Calculate effective tax rate and display it.
        var effectiveTaxRate =  taxOwedInDollars.text / grossAnnualIncome.text
        
        }
      
        }

    
            
        
    
    
    


