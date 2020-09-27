//
//  ViewController.swift
//  Colorgame
//
//  Created by Sarah Zaman on 9/26/20.
//  Copyright © 2020 Sarah Zaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Color1: UIView!
    @IBOutlet weak var Color2: UIView!
    @IBOutlet weak var Color4: UIView!
    @IBOutlet weak var Color3: UIView!
    
    @IBOutlet weak var colorName: UILabel!
    @IBOutlet weak var scoreValue: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var model = ColorGame()
    var score = 0
    
    var checkColor1 = false
    var checkColor2 = false
    var checkColor3 = false
    var checkColor4 = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //right1
       let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(handleTap1))
       Color1.addGestureRecognizer(tapGesture1)
        
        //left1
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(handleTap2))
        Color2.addGestureRecognizer(tapGesture2)
        
        //right2
        let tapGesture3 = UITapGestureRecognizer(target: self, action: #selector(handleTap3))
              Color3.addGestureRecognizer(tapGesture3)
            
        //left2
        let tapGesture4 = UITapGestureRecognizer(target: self, action:
            #selector(handleTap4))
            Color4.addGestureRecognizer(tapGesture4)
       
        
        
        
        //color changes
        colorChange()
        
        //diaplay color name
        
        colorName.text = model.randomColorString()
        
        //Localization
        colorName.text = NSLocalizedString(colorName.text!, comment: "colorName")
        
        //score name
        scoreValue.text = String(score)
        
        //check color
        checkColor1 = model.check(inputString: colorName.text!, inputColor: Color1.backgroundColor!)
        checkColor2 = model.check(inputString: colorName.text!, inputColor: Color2.backgroundColor!)
        checkColor3 = model.check(inputString: colorName.text!, inputColor: Color3.backgroundColor!)
        checkColor4 = model.check(inputString: colorName.text!, inputColor: Color4.backgroundColor!)
        
        //Localization
               scoreLabel.text = NSLocalizedString("Score", comment: "score")
        
    }
    
    @IBAction func onScreenTap(_ sender: Any) {
        
        //check color
        checkColor1 = model.check(inputString: colorName.text!, inputColor: Color1.backgroundColor!)
        checkColor2 = model.check(inputString: colorName.text!, inputColor: Color2.backgroundColor!)
        checkColor3 = model.check(inputString: colorName.text!, inputColor: Color3.backgroundColor!)
        checkColor4 = model.check(inputString: colorName.text!, inputColor: Color4.backgroundColor!)
        
        if !checkColor1 && !checkColor2 && !checkColor3 && !checkColor4 {
            score = model.increaseScore(inputInt: score)
        }
        else {
            score = model.decreaseScore(inputInt: score)
        }
        
        scoreValue.text = String(score)
        
        //diaplay color name
              
              colorName.text = model.randomColorString()
        
        //Localization
        colorName.text = NSLocalizedString(colorName.text!, comment: "colorName")
        
        colorChange()
         
    }
    
    @objc func handleTap1() {
        
  
        
        //check color
        checkColor1 = model.check(inputString: colorName.text!, inputColor: Color1.backgroundColor!)
        checkColor2 = model.check(inputString: colorName.text!, inputColor: Color2.backgroundColor!)
        checkColor3 = model.check(inputString: colorName.text!, inputColor: Color3.backgroundColor!)
        checkColor4 = model.check(inputString: colorName.text!, inputColor: Color4.backgroundColor!)
        
    
        if(checkColor1){
            score = model.increaseScore(inputInt: score)
        }
        else{
            score = model.decreaseScore(inputInt: score)
        }
        scoreValue.text = String(score)
        
        //diaplay color name
              
              colorName.text = model.randomColorString()
        
        //Localization
        colorName.text = NSLocalizedString(colorName.text!, comment: "colorName")
        
       colorChange()
    }
    
    @objc func handleTap2() {
          
        
        //check color
        checkColor1 = model.check(inputString: colorName.text!, inputColor: Color1.backgroundColor!)
        checkColor2 = model.check(inputString: colorName.text!, inputColor: Color2.backgroundColor!)
        checkColor3 = model.check(inputString: colorName.text!, inputColor: Color3.backgroundColor!)
        checkColor4 = model.check(inputString: colorName.text!, inputColor: Color4.backgroundColor!)
        
         
          
        if(checkColor2){
                   score = model.increaseScore(inputInt: score)
               }
               else{
                   score = model.decreaseScore(inputInt: score)
               }
               scoreValue.text = String(score)
        
        //diaplay color name
              
              colorName.text = model.randomColorString()
        
        //Localization
        colorName.text = NSLocalizedString(colorName.text!, comment: "colorName")
        
        colorChange()
      }
    
    @objc func handleTap3() {
        
     
         //check color
         checkColor1 = model.check(inputString: colorName.text!, inputColor: Color1.backgroundColor!)
         checkColor2 = model.check(inputString: colorName.text!, inputColor: Color2.backgroundColor!)
         checkColor3 = model.check(inputString: colorName.text!, inputColor: Color3.backgroundColor!)
         checkColor4 = model.check(inputString: colorName.text!, inputColor: Color4.backgroundColor!)
         
        
           
           if(checkColor3){
                      score = model.increaseScore(inputInt: score)
                  }
                  else{
                      score = model.decreaseScore(inputInt: score)
                  }
                  scoreValue.text = String(score)
        
        //diaplay color name
              
              colorName.text = model.randomColorString()
        
        //Localization
        colorName.text = NSLocalizedString(colorName.text!, comment: "colorName")
        
        colorChange()
        
    }
       
       @objc func handleTap4() {
    
        //check color
        checkColor1 = model.check(inputString: colorName.text!, inputColor: Color1.backgroundColor!)
        checkColor2 = model.check(inputString: colorName.text!, inputColor: Color2.backgroundColor!)
        checkColor3 = model.check(inputString: colorName.text!, inputColor: Color3.backgroundColor!)
        checkColor4 = model.check(inputString: colorName.text!, inputColor: Color4.backgroundColor!)
        
             if(checkColor4){
                        score = model.increaseScore(inputInt: score)
                    }
                    else{
                        score = model.decreaseScore(inputInt: score)
                    }
                    scoreValue.text = String(score)
        //diaplay color name
              
              colorName.text = model.randomColorString()
        
        //Localization
        colorName.text = NSLocalizedString(colorName.text!, comment: "colorName")

            colorChange()
        
         }
    
    
    func colorChange() {
        
        //color changes
        Color1.backgroundColor = model.randomColorGenerator()
        Color2.backgroundColor = model.randomColorGenerator()
        Color3.backgroundColor = model.randomColorGenerator()
        Color4.backgroundColor = model.randomColorGenerator()
        
        
        
        if Color4.backgroundColor == Color2.backgroundColor || Color4.backgroundColor == Color1.backgroundColor || Color4.backgroundColor == Color3.backgroundColor {
            Color4.backgroundColor = model.randomColorGenerator()
        }
        
    if Color3.backgroundColor == Color2.backgroundColor || Color3.backgroundColor == Color1.backgroundColor || Color3.backgroundColor == Color4.backgroundColor {
            Color3.backgroundColor = model.randomColorGenerator()
        }
        
        if Color2.backgroundColor == Color1.backgroundColor || Color2.backgroundColor == Color3.backgroundColor || Color2.backgroundColor == Color4.backgroundColor {
            Color2.backgroundColor = model.randomColorGenerator()
        }
        
        if Color1.backgroundColor == Color2.backgroundColor || Color1.backgroundColor == Color3.backgroundColor || Color1.backgroundColor == Color4.backgroundColor {
                         Color1.backgroundColor = model.randomColorGenerator()
                     }
        
        view.backgroundColor = model.backgroundColor()
        if view.backgroundColor == UIColor.black || view.backgroundColor == UIColor.blue {
        view.backgroundColor = UIColor.yellow
        }
    }


}

