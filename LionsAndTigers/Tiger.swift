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

}
