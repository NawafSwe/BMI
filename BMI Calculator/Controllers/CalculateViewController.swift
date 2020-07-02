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
    
    var calculatorBrain =  CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func heightUpdate(_ sender : UISlider){
        //this is for how to format a string for numbers
        //String(format: "%.3f", totalWorkTimeInHours)
        let height = calculatorBrain.formatNumber(sender.value)
        heightValue.text =  "\(height)m"
        
    }
    @IBAction func weightUpdate(_ sender : UISlider) {
        let weight = Int(sender.value)
        weightValue.text = "\(weight)Kg"
    }
    
    @IBAction func calculateBmi(_ sender : UIButton){
        let weight = Int(weightSliderValue.value)
        let height = Float ( heightSliderValue.value * heightSliderValue.value)
        
        calculatorBrain.calculateBMI(height,weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
        
    }
    // it will be trigger before calling performSegue which from that we can prepare some values if needed
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult"){
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getFormatedBmi()
            destinationVC.status = calculatorBrain.CheckStatus()
            destinationVC.message = calculatorBrain.status
            
        }
        
    }
}


