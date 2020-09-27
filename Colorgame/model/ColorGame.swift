//
//  ColorGame.swift
//  Colorgame
//
//  Created by Sarah Zaman on 9/26/20.
//  Copyright © 2020 Sarah Zaman. All rights reserved.
//

import Foundation
import UIKit


class ColorGame{
    
   let ColorDict = [
    1: UIColor.red,
    2: UIColor.green,
    3: UIColor.purple,
    4: UIColor.yellow,
    5: UIColor.orange,
    6: UIColor.systemPink,
    7: UIColor.systemTeal,
    8: UIColor.black,
    9: UIColor.cyan
    ]
    
    let colorStrings = [
        "Red", "Yellow", "Orange", "Black", "Pink", "Purple", "Green"
    ]
    
    func randomColorGenerator() -> UIColor{
        let random = Int.random(in: 1...9)
        var outputColor = UIColor.clear
        for(key,value) in ColorDict{
            if key == random {
                outputColor = value
            }
        }
        return outputColor
    }
    
    func randomColorString() -> String{
        let random = Int.random(in: 1...6)
        let colorStringName = colorStrings[random]
        return colorStringName
    }
    
    func backgroundhelper() -> CGFloat {
        return CGFloat(Float(arc4random())/Float(UINT32_MAX))
    }
    
    func backgroundColor() -> UIColor {
        var color = UIColor(red: backgroundhelper(), green: backgroundhelper(), blue: backgroundhelper(), alpha: backgroundhelper())
        
        if color == UIColor.black || color == UIColor.darkGray {
            color = UIColor.yellow
        }
        
        return color
    }
    
    func increaseScore(inputInt: Int) -> Int{
        let score = inputInt + 1
        return score
    }
    
    func decreaseScore(inputInt: Int) -> Int{
        let score = inputInt - 1
        return score
    }
    
    func check(inputString: String, inputColor: UIColor)->Bool{
        
        if inputColor == UIColor.red && inputString == colorStrings[0] || inputColor == UIColor.red && inputString == "Rouge"{
            return true
        }
        else if inputColor == UIColor.systemPink && inputString == colorStrings[4] ||  inputColor == UIColor.systemPink && inputString == "Rose"{
            return true
        }
        else if inputColor == UIColor.orange && inputString == colorStrings[2]{
            return true
        }
        else if inputColor == UIColor.yellow && inputString == colorStrings[1] || inputColor == UIColor.yellow && inputString == "Jaune"{
            return true
        }
        else if inputColor == UIColor.black && inputString == colorStrings[3] || inputColor == UIColor.black && inputString == "Noire"{
            return true
        }
        else if inputColor == UIColor.purple && inputString == colorStrings[5] || inputColor == UIColor.purple && inputString == "Mauve"{
            return true
        }
        else if inputColor == UIColor.green && inputString == colorStrings[6] || inputColor == UIColor.green && inputString == "Verte"{
            return true
        }
        else{
             return false
        }
        
    }
    
}


