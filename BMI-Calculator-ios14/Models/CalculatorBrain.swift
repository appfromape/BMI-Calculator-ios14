//
//  CalculatorBrain.swift
//  BMI-Calculator-ios14
//
//  Created by 程式猿 on 2021/2/25.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var theBMI: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        
        let bmiValue = weight / (height*height)
        
        if bmiValue < 18.5 {
            theBMI = BMI(value: bmiValue, advice: "吃多一點！！", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else if bmiValue < 24.9 {
            theBMI = BMI(value: bmiValue, advice: "你穠纖合度", color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        } else {
            theBMI = BMI(value: bmiValue, advice: "你這個小胖子", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> Float {
            let bmiTo1DecimalPlace = String(format: "%.2f", theBMI?.value ?? 0.0)
            return Float(bmiTo1DecimalPlace)!
        }
    
    func getAdvice() -> String {
        return theBMI?.advice ?? "沒有建議"
    }
    
    func getColor() -> UIColor {
            return theBMI?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    
}
