//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet var billTextField: UITextField!
    @IBOutlet var zeroPctButton: UIButton!
    @IBOutlet var tenPctButton: UIButton!
    @IBOutlet var twentyPctButton: UIButton!
    @IBOutlet var splitNumberLabel: UILabel!

    var tipPct = 0.0

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false

        sender.isSelected = true
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        tipPctCheck()
        print(tipPct)
    }

    func tipPctCheck() {
        if zeroPctButton.isSelected {
            tipPct = 0.0
        }
        if tenPctButton.isSelected {
            tipPct = 0.1
        }
        if twentyPctButton.isSelected {
            tipPct = 0.2
        }
    }
}
