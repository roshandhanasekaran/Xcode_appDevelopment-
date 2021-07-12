//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//use control button to drag and drop the imag below the call
    @IBOutlet weak var DiceImageView1: UIImageView!

    @IBOutlet weak var DiceImageView2: UIImageView!
   
   
        // Do any additional setup after loading the view.
    //    DiceImageView1.image = #imageLiteral(resourceName: "DiceSix")
//          who   .      what  =  value
  //      DiceImageView1.alpha = 0.5
        
   //     DiceImageView2.image = #imageLiteral(resourceName: "DiceThree")
        
       
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
       /* DiceImageView1.image = #imageLiteral(resourceName: "DiceFour")
        DiceImageView2.image =
         #imageLiteral(resourceName: "DiceFour") */
        var diceArray = [ #imageLiteral(resourceName: "DiceOne") ,#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        DiceImageView1.image = diceArray[Int.random(in: 1...5)]
        DiceImageView2.image = diceArray[Int.random(in: 1...5)]
        //random randomElement() or() var[int.random(in: 1...5)]
       
        
       
    }
    
}

