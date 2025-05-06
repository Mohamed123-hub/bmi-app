//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class calculateViewController: UIViewController {
    
    
    var bmiValue : String?
    var  calculatebrain = calculateBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightSlider: UISlider!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightpressed(_ sender: UISlider) {
        
        heightLabel.text = String(format:"%.2fm",sender.value)
        
        
    }
    
    
    @IBAction func weightPressed(_ sender: UISlider) {
        
        weightLabel.text = String(format:"%.0fkg",sender.value)
        
        
    }
    
    
    
    
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
       
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatebrain.culculateBMI(height:height, weight: weight)
        performSegue(withIdentifier: "GoToResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue,sender:Any?){
        if segue.identifier == "GoToResult"{
            let destinationVC = segue.destination as! ResultViewContoller
            destinationVC.bmiValue1 = calculatebrain.getBMI()
            destinationVC.advice = calculatebrain.getadvice()
            destinationVC.color = calculatebrain.getcolor()
        }
        
        
        
        
    }
    
    
    
    
    
}

