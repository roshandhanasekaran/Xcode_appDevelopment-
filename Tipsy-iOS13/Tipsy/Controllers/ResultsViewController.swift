//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Roshan Dhanashekeran on 18/08/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLable: UILabel!
    
    var result = "0.0"
    var tip = 10
    var split = 2
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = result
        settingsLable.text = "Split between \(split) people, with \(tip)% tip."
        
    }
    @IBAction func recalculatePresed(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
