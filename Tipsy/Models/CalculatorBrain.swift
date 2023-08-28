//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Amir Mahdi Abravesh on 8/29/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var tipPct: Float = 0.0
    var amount: Float = 0.0
    var peopleCount: Float = 0.0

    func calculate() -> Float {
        var result: Float = 0.0
        result = amount * tipPct
        result += amount
        result = result / peopleCount
        return Float(round(100 * result) / 100)
    }
    
}
