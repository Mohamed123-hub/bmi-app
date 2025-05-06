//
//  ResultViewContoller.swift
//  BMI Calculator
//
//  Created by MoSaiedZ on 06/05/2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewContoller: UIViewController {

    var bmiValue1 : String? 
    var advice:String?
    var color: UIColor!
    @IBOutlet weak var bmiValue: UILabel!
    
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiValue.text = bmiValue1
        adviceLabel.text = advice
        view.backgroundColor = color
        
        
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true,completion: nil)
        
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
