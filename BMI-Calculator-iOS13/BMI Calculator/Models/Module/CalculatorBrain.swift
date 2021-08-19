//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Roshan Dhanashekeran on 03/08/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var BMI : bmi?
    var advice :String?
    var color : UIColor?
    func getBMIValue() -> String{
        
        let bmiTo1DecimalPlace = String(format: "%.1f", BMI?.value ?? "0.0")
        return bmiTo1DecimalPlace
    }
    
    func getAdvice()->String{
       return BMI?.advice ?? "no advice"
    }
    func getColor()->UIColor{
        return BMI?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    mutating func calculateBMI(height : Float , weight : Float)  {
        let BMIValue = weight / pow(2, height)
        
        if BMIValue < 18.5 {
            print("underweight")
            BMI = bmi(value: BMIValue, advice: "eat more", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
            
        }
        else if BMIValue < 24.9 {
                print("normal weight")
            BMI = bmi(value: BMIValue, advice: "your doing great", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
            } else {
                print("overweight")
                BMI = bmi(value: BMIValue, advice: "go to the gym", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
            }
      
    }
}
