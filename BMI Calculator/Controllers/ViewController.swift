//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSliderValue: UISlider!
    @IBOutlet weak var weightSliderValue: UISlider!
    
    
    var height : Float = 0.0
    var weight : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func heightUpdate(_ sender : UISlider){
        //this is for how to format a string for numbers
        //String(format: "%.3f", totalWorkTimeInHours)
        height = sender.value
        heightValue.text = String(format: "%.2f", height) + "m"
        
    }
    @IBAction func weightUpdate(_ sender : UISlider) {
        weight = Int(sender.value)
        weightValue.text = "\(String(weight))Kg"
    }
    
    @IBAction func calculateBmi(_ sender : UIButton){
        weight = Int(weightSliderValue.value)
        height = Float ( heightSliderValue.value * heightSliderValue.value)
        let bmi : Float =  Float ( weight ) / (height)
        
        
   
    }
    
}

