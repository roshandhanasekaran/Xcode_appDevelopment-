//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var FalseButton: UIButton!
    @IBOutlet weak var TrueButton: UIButton!
    @IBOutlet weak var TextLable: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
    }
    
    var quizBrain = QuizBrain ()
    
    @IBAction func AnswerButton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
       let userGotItRight = quizBrain.checkAnswer(userAnswer : userAnswer)
        
        if userGotItRight {
            TrueButton.backgroundColor = UIColor.green
        }else {
            FalseButton.backgroundColor = UIColor.red
        }
            quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector:#selector(updateUI), userInfo: nil, repeats: false)
        
        
        
    }
    @objc func updateUI() {
        
        TextLable.text = quizBrain.getQuestionText()
        TrueButton.backgroundColor = UIColor.clear
        FalseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        score.text = "Score: \(quizBrain.getScore())"
        
    }
}




