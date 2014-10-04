//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Marco F.A. Corzani on 23.09.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {

    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff() {
        println("Tiger: Chuff Chuff")
    }

    
    func chuffNumberOfTimes(numberOfTimes:Int) {
    
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            
            // Wegen Namenskonflikt mit der Variablen obendrüber, wird die Funktion mit .self aufgerufen
           
            self.chuff()
        }
    }

    
    func chuffANumberOfTimes(numberOfTimes:Int, isloud:Bool) {
    
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; ++chuffTimes {
        
            if isloud == true {
            
            chuff()
                
            }
                else {
                
                    println("Tiger: pur pur pur")
                
            
            }
            
           
        
        }
    
    
    }

    
    func ageInTigerYearsFromAge(regularAge:Int) -> Int {
    
        let newAge = regularAge * 3
        return newAge
    
    }

    
    func randomFact() -> String  {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact:String
    
        if randomNumber == 0 {
        
            randomFact = "The Tiger is the biggest species in the cat family"
        }
        
        else if randomNumber == 1 {
            
            randomFact = " Tigers live in Desserts and woods"
            
        }
            
        else {
             
            randomFact = "Tiger werden sehr alt"
            
            }
        
           
    
        return randomFact
    }



}
