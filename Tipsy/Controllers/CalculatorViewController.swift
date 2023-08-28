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

    var calculatorBrain = CalculatorBrain()

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        billTextField.endEditing(true)

        sender.isSelected = true
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true)
        splitNumberLabel.text = "\(Int(sender.value))"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        tipPctCheck()
        calculatorBrain.amount = Float(billTextField.text!) ?? 0.0
        calculatorBrain.peopleCount = Float(splitNumberLabel.text!)!
        performSegue(withIdentifier: "goToResult", sender: self)
    }

    func tipPctCheck() {
        if zeroPctButton.isSelected {
            calculatorBrain.tipPct = 0.0
        }
        if tenPctButton.isSelected {
            calculatorBrain.tipPct = 0.1
        }
        if twentyPctButton.isSelected {
            calculatorBrain.tipPct = 0.2
        }
    }

    func activePct() -> String {
        if tenPctButton.isSelected {
            return tenPctButton.title(for: .normal)!
        } else if twentyPctButton.isSelected {
            return twentyPctButton.title(for: .normal)!
        } else {
            return zeroPctButton.title(for: .normal)!
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.total = calculatorBrain.calculate()
            destinationVC.peopleCount = splitNumberLabel.text!
            destinationVC.percent = activePct()
        }
    }
}
