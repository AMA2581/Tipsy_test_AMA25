//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Amir Mahdi Abravesh on 8/28/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var peopleCount: String?
    var total: Float?
    var percent: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = "\(total!)"
        
        settingsLabel.text = "Split between \(peopleCount!) people, with \(percent!) tip"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
