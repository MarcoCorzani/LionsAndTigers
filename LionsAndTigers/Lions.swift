//
//  Lions.swift
//  LionsAndTigers
//
//  Created by Marco F.A. Corzani on 30.09.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import Foundation
import UIKit

class Lion {
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named: "")
    var name = ""
    var subSpecies = ""
    
    func roar ()  {
        println("Lion: Roar Roar")
    }
    
    func changeToAlphaMale () {
        self.isAlphaMale = true
    
    }

    func randomFact () -> String {
        var randomFact:String
    
        if self.isAlphaMale == true {
            randomFact = "Male Lions are easy to recognize thanks to their distinctive manes"
        }
   
        else { randomFact = "Female Lions dont have this distinctive manes"
    
        }
        return randomFact
    }


}