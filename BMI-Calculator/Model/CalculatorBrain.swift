//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by mac on 23/06/2023.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float = 0.0
    
   mutating func calculate(height height:Float, weight weight:Float){
        var weightInKgs = weight*1000
        var heightInM2 = height*height
        bmi = weightInKgs/heightInM2
    }
    
    func getBmi()->Float {
        return self.bmi
    }
}
