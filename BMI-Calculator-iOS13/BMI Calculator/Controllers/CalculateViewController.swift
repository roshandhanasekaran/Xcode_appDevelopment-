//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
   
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var weightslider: UISlider!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var HeightLable: UILabel!
    
    @IBOutlet weak var WeightLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func HeightSliderChange(_ sender: UISlider) {
        
        let height = (String(format: "%.2f", sender.value) )
        HeightLable.text = "\(height)m"
        
    }
    
    @IBAction func WeightSliderChange(_ sender: UISlider) {
        let weight =  (String(format: "%.0f", sender.value) )
        WeightLable.text = "\(weight)kg"
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = (heightSlider.value)
        let weight = (weightslider.value)
        
        calculatorBrain.calculateBMI(height : height, weight : weight)
       
        
        self.performSegue(withIdentifier: "goToResult", sender: self) // sender is the current class 
        
    }
    
    /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "goToResult"{
     let destinationVC = segue.description  as! ResultsViewController
     destinationVC.bmiValue = "0.0" */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
          
                
            }
            
    }
    
}




