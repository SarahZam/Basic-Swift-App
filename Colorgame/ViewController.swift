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
       
        
        //Localization
        colorName.text = NSLocalizedString("colorString", comment: "colorName")
    
    }
    
    @IBAction func onScreenTap(_ sender: Any) {
        
         if view.backgroundColor == UIColor.blue {
                   view.backgroundColor = UIColor.red
               } else {
                   view.backgroundColor = UIColor.blue
               }
    }
    
    @objc func handleTap1() {
        
        // example task: change background color
        if Color1.backgroundColor == UIColor.blue {
            Color1.backgroundColor = UIColor.red
        } else {
            Color1.backgroundColor = UIColor.blue
        }
        
    }
    
    @objc func handleTap2() {
          
          // example task: change background color
          if Color2.backgroundColor == UIColor.blue {
              Color2.backgroundColor = UIColor.red
          } else {
              Color2.backgroundColor = UIColor.blue
          }
          
      }
    
    @objc func handleTap3() {
           
           // example task: change background color
           if Color3.backgroundColor == UIColor.blue {
               Color3.backgroundColor = UIColor.red
           } else {
               Color3.backgroundColor = UIColor.blue
           }
           
       }
       
       @objc func handleTap4() {
             
             // example task: change background color
             if Color4.backgroundColor == UIColor.blue {
                 Color4.backgroundColor = UIColor.red
             } else {
                 Color4.backgroundColor = UIColor.blue
             }
             
         }


}

