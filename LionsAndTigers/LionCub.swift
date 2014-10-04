//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Marco F.A. Corzani on 01.10.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import Foundation

//LionCub ist jetzt eine Subclass von "Lion" und "Lion" ist die "Super class"


class LionCub:Lion {
    func rubLionCubsBelly () {
    println("LionCub: Snuggle and be happy")
    
    }

    override func roar() {
        super.roar()
        println("LionCub: Growl Growl")
    }
    
    


}
