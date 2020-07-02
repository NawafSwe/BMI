//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nawaf B Al sharqi on 10/11/1441 AH.
//  Copyright © 1441 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var height : Float = 0.0
    var weight : Int = 0
    var bmi : Float = 0.0
    var status: String = ""
    
    
    
    func formatNumber(_ number: Float)->String{
        return String(format:"%.1f",number)
        
    }
    mutating func calculateBMI(_ height:Float , _ weight: Int){
        self.bmi = Float(weight)/height
        
    }
    func getFormatedBmi ()->String{
        return self.formatNumber(self.bmi)
    }
    mutating func CheckStatus ()->UIColor{
        if(bmi > 25){
            self.status = "danger"
            return UIColor.red
        }else{
            self.status = "safe"
            return UIColor.green        }
    }
    
}
