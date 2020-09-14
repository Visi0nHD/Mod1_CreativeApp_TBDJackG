//
//  ViewController.swift
//  Mod1_CreativeApp_TBDJackG
//
//  Created by Tiger Coder on 9/7/20.
//  Copyright © 2020 Jack Gronberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var rulesLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    var counter = 10
    var clicks=0
    var OurTimer = Timer()
    var highscore = 0
    @IBOutlet weak var clickerButton: UIButton!
    override func viewDidLoad() {
     super.viewDidLoad()
      
   clickerButton.isHidden = true
 }


 @objc func updateCounter() {
     //example functionality
     if counter >= 0 {
        if counter <= 10{
        label.text  = String("\(counter)")
         counter -= 1
     }
    }
 }
      
    @IBAction func startButton(_ sender: Any) {
        clickerButton.isHidden=false
        rulesLabel.isHidden=true
        OurTimer.invalidate()
        OurTimer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        counter=10
        clicks=0
        scoreLabel.text=String("Score:   \(clicks)")
    }
 
    @IBAction func clickerButton(_ sender: Any) {
        if(counter>0){
        clicks+=1
       // highscore+=1
    }
        scoreLabel.text = "Score:  \(clicks)"
        if(clicks>=highscore){
            highscore=clicks
           highscoreLabel.text = "Highscore: \(highscore)"
        }
    }
    
}

