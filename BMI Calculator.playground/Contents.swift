//: Playground - noun: a place where people can play

import UIKit

func bmiCalc(bodyMass : Double, bodyHeight : Double) -> String{
    
    var BMI = bodyMass / pow(bodyHeight, 2)
    
    if BMI > 25 {
        return "Your BMI is \(BMI). You are overweight, please take care of yourself."
    }
    else if BMI < 25 && BMI > 18.5 {
        return "Your BMI is \(BMI). You have normal weight."
    }
    else {
        return "Your BMI is\(BMI). You are underweight, please take care of yourself."
    }
}

print(bmiCalc(bodyMass: 80, bodyHeight: 1.8))
