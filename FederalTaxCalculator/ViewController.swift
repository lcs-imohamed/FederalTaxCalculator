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
   
    @IBOutlet weak var labelTaxOwed: UILabel!
    @IBOutlet weak var effectiveTaxRate: UILabel!
    override func viewDidLoad() {
    
    //MARK: Methods
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTax(_ sender: Any) {
        
        //Obtain value from text field
        guard let personNameAsString = personName.text else {
            labelTaxOwed.text = "Please input a value. "
            return
        }
        guard let grossAnnualIncomeAsString = grossAnnualIncome.text else {
            labelTaxOwed.text = "Please input a value."
            return
        }
        //Change to double
            guard let grossAnnualIncomeAsDouble = Double(grossAnnualIncomeAsString) else {
                labelTaxOwed.text = "Please input a numerical value."
                return
            }
        //Calculate tax
        switch grossAnnualIncomeAsDouble {
        case 0...47630:
            let taxOwedInDollars = 0.15 * grossAnnualIncomeAsDouble
            labelTaxOwed.text = String(taxOwedInDollars)
            
        default:
            print("aww shucks. it didnt work")
            
        }
        }
    }
   



