//
//  quizBrain.swift
//  Quizzler-iOS13
//
//  Created by Roshan Dhanashekeran on 14/07/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = [ question.init(text: "my name s roshan", answer: "True"),
                 question.init(text: "my age is 21", answer: "True"),
                 
                 question(text: "A slug's blood is green.", answer: "True"),
                 question(text: "Approximately one quarter of human bones are in the feet.", answer: "True"),
                 question(text: "The total surface area of two human lungs is approximately 70 square metres.", answer: "True"),
                 question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: "True"),
                 question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: "False"),
                 question(text: "It is illegal to pee in the Ocean in Portugal.", answer: "True"),
                 question(text: "You can lead a cow down stairs but not up stairs.", answer: "False"),
                 question(text: "Google was originally called 'Backrub'.", answer: "True"),
                 question(text: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "True"),
                 question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: "False"),
                 question(text: "No piece of square dry paper can be folded in half more than 7 times.", answer: "False"),
                 question(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "True")
                 
                 
    ]
    
    var questions = 0
    var score = 0
    
    
    
    mutating func checkAnswer(userAnswer : String) -> Bool {
        if userAnswer == quiz[questions].answer {
            score += 1
            return true
        }else {
            return false
            
        }
    }
    func getScore() -> Int{
        return score
        
    }
    
    func getQuestionText () -> String {
        return quiz[questions].text
    }
    
    func getProgress () -> Float {
        let progress = Float( questions) / Float( quiz.count)
        return progress
    }
    
   mutating func nextQuestion () {
        if questions + 1 < quiz.count {
            questions += 1
        } else {
            questions = 0
            score = 0
        }
        
    }
    
        
    }







