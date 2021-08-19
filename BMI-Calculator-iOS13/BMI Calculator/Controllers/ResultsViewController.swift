//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Roshan Dhanashekeran on 02/08/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue : String?
    var advice : String?
    var color : UIColor?
   

    @IBOutlet weak var bmiLable: UILabel!
    
    @IBOutlet weak var adviceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLable.text = bmiValue
        adviceLable.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   

 }*/
}
