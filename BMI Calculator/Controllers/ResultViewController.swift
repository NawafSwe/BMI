//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Nawaf B Al sharqi on 10/11/1441 AH.
//  Copyright © 1441 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabelView: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultBackGround: UIImageView!
    
    var bmiValue :String?
    var status : UIColor?
    var message: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabelView.text =  bmiValue!
        // Do any additional setup after loading the view.
        adviceLabel.text = message!
        
        resultBackGround.backgroundColor = status!
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    @IBAction func reCalculate(_ sender: UIButton) {
        // way to go back one step from the Segue
        self.dismiss(animated: true, completion:nil)
        
        
    }
    
    
}
