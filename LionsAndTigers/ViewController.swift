//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Marco F.A. Corzani on 23.09.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var ageLabel: UILabel!
    
    
    @IBOutlet weak var breedLabel: UILabel!
    
    
    var myTigers:[Tiger] = []
    
    
    // Hier wird eine Variable mit einem INT Wert erzeugt
    
    var currentIndex = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    var myTiger = Tiger()
        myTiger.name = "Trigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named:"BengalTiger.jpg")
        
//        myTiger.chuff()
        myTiger.chuffNumberOfTimes(3)
        
        // Hier wird die erste Tigerinstanz zum Struct aus Tiger.swift hinzugefügt
        
        myTigers.append(myTiger)
        
        
        println("ViewControler: My Tiger's name is \(myTiger.name) and its breed is \(myTiger.breed) and he is \(myTiger.age) years old and the image is \(myTiger.image)")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
        //Hier wird die Variable auf den Wert 0 gesetzt
        
        currentIndex = 0
        
    var secondTiger = Tiger()
        secondTiger.name = "Peter"
        secondTiger.breed = "IndoChinese"
        secondTiger.age = 2
        secondTiger.image = UIImage(named:"IndochineseTiger.jpg")
        
        
    var thirdTiger = Tiger()
        thirdTiger.name = "Paul"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 7
        thirdTiger.image = UIImage(named:"MalayanTiger.jpg")
        
     
    var fourthTiger = Tiger ()
        fourthTiger.name = "Stefan"
        fourthTiger.breed = "Sibirian Tiger"
        fourthTiger.age = 6
        fourthTiger.image = UIImage(named:"SiberianTiger.jpg")
        
          secondTiger.chuffNumberOfTimes(5)
//        secondTiger.chuff()
//        thirdTiger.chuff()
//        fourthTiger.chuff()
        
        
        
        // Hier werden die 3 weiteren Tigerinstanzen zum Struct aus Tiger.swift hinzugefügt
        
        myTigers += [secondTiger, thirdTiger, fourthTiger]
        
      
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
    
       
        
        var randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        
        while currentIndex == randomIndex {
        
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        
        }
        
        currentIndex = randomIndex
        
        
        let tiger = myTigers[randomIndex]
    
       
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = ("\(tiger.age) years old")
            self.breedLabel.text = tiger.breed
            
            
            }, completion: { (finished:Bool) -> () in
    
    }       )

    }



}

