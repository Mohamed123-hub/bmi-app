//
//  calculateBrain.swift
//  BMI Calculator
//
//  Created by MoSaiedZ on 06/05/2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit
struct calculateBrain {
    
    var bmi : BMI?
    
    
    mutating func culculateBMI(height:Float,weight:Float){
        
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
           bmi = BMI(value:bmiValue , advice:"Eat more", color:#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
        }else if bmiValue < 24.9 {
            bmi = BMI(value:bmiValue , advice:"Go on this track", color:#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }else {
            bmi = BMI(value:bmiValue , advice:"Dont eat ", color:#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
        
    }
    func getBMI () -> String {
        
        let bmiValue = String(format:"%.2f",bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getadvice () -> String {
      
        bmi?.advice ?? "no advice"
        
        
    }
    func getcolor () -> UIColor {
       
        bmi?.color ?? #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }
    
    
    
}
