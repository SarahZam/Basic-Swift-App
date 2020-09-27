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
    8: UIColor.blue,
    9: UIColor.cyan
    ]
    
    let colorStrings = [
        "Red", "Yellow", "Orange", "Blue", "Pink", "Purple", "Green"
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
    
    func increaseScore(inputInt: Int) -> Int{
        let score = inputInt + 1
        return score
    }
    
    func decreaseScore(inputInt: Int) -> Int{
        let score = inputInt - 1
        return score
    }
    
    func check(inputString: String, inputColor: UIColor)->Bool{
        
        if inputColor == UIColor.red && inputString == "Red"{
            return true
        }
        else if inputColor == UIColor.systemPink && inputString == "Pink"{
            return true
        }
        else if inputColor == UIColor.systemTeal && inputString == "Teal"{
            return true
        }
        else if inputColor == UIColor.cyan && inputString == "Cyan"{
            return true
        }
        else if inputColor == UIColor.orange && inputString == "Orange"{
            return true
        }
        else if inputColor == UIColor.yellow && inputString == "Yellow"{
            return true
        }
        else if inputColor == UIColor.blue && inputString == "Blue"{
            return true
        }
        else if inputColor == UIColor.purple && inputString == "Purple"{
            return true
        }
        else if inputColor == UIColor.green && inputString == "Green"{
            return true
        }
        else{
             return false
        }
        
    }
    
}


