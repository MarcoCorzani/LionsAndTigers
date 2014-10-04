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
    
    
    @IBOutlet weak var randomFactLabel: UILabel!
    
    // Hier wird das (leere) Tiger Array erstellt
    
    var myTigers:[Tiger] = []
    
    
    var lions:[Lion] = []
    
    
    
    
    // Hier wird eine Variable mit einem INT Wert erzeugt
    
    var currentIndex = 0
    
    // Variable mit einem Tuple (Mehreren Werten)
    
    var currentAnimal = (species: "Tiger", index : 0)
    
    
    
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
        myTiger.chuffANumberOfTimes(5, isloud: false)
        
        //Update von myTiger.age über Funktion aus Tiger.swift
        
        myTiger.age = myTiger.ageInTigerYearsFromAge(myTiger.age)
        
        // Hier wird die erste Tigerinstanz zum Struct aus Tiger.swift hinzugefügt
        
        myTigers.append(myTiger)
        
        
        println("ViewControler: My Tiger's name is \(myTiger.name) and its breed is \(myTiger.breed) and he is \(myTiger.age) years old and the image is \(myTiger.image)")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        randomFactLabel.text = myTiger.randomFact()
        
        //Hier wird die Variable auf den Wert 0 gesetzt
        
        currentIndex = 0
        
    var secondTiger = Tiger()
        secondTiger.name = "Peter"
        secondTiger.breed = "IndoChinese"
        secondTiger.age = 2
        secondTiger.image = UIImage(named:"IndochineseTiger.jpg")
        
        secondTiger.age = secondTiger.ageInTigerYearsFromAge(secondTiger.age)
        
    var thirdTiger = Tiger()
        thirdTiger.name = "Paul"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 7
        thirdTiger.image = UIImage(named:"MalayanTiger.jpg")
        
        thirdTiger.age = myTiger.ageInTigerYearsFromAge(thirdTiger.age)
        
     
    var fourthTiger = Tiger ()
        fourthTiger.name = "Stefan"
        fourthTiger.breed = "Sibirian Tiger"
        fourthTiger.age = 6
        fourthTiger.image = UIImage(named:"SiberianTiger.jpg")
        
        fourthTiger.age = fourthTiger.ageInTigerYearsFromAge(fourthTiger.age)
        
          secondTiger.chuffNumberOfTimes(5)
//        secondTiger.chuff()
//        thirdTiger.chuff()
//        fourthTiger.chuff()
        
        
        
        // Hier werden die 3 weiteren Tigerinstanzen zum Struct aus Tiger.swift hinzugefügt
        
        myTigers += [secondTiger, thirdTiger, fourthTiger]
        
        //Hier wird die erste Lion Instanz als Variable initialisiert, aus der Lion class aus Lions.swift
        
        var lion = Lion()
        lion.age = 4
        lion.isAlphaMale = false
        lion.image = UIImage(named: "Lion.jpg")
        lion.name = "Mufasa"
        lion.subSpecies = "West African"
        
        println("The lions age is \(lion.age) and the lions name is \(lion.name) and his sub species is \(lion.subSpecies)")
        
        lion.roar()
        lion.changeToAlphaMale()
        
        if lion.isAlphaMale == true {
            
            println("The Lion is now an Alpha Male")
        }
        
        
        
        var lioness = Lion()
        lioness.age = 3
        lioness.isAlphaMale = false
        lioness.image = UIImage(named: "Lioness.jpeg")
        lioness.name = "Sarabi"
        lioness.subSpecies = "Barbary"
        
        lioness.roar()
        
        // Füge beide Löwen zum lions Array hinzu (mit +=)
        
        self.lions += [lion, lioness]
        
        
        var lionCub = LionCub()
        lionCub.age = 1
        lionCub.name = "Simba"
        lionCub.image = UIImage(named:"LionCub1.jpg")
        lionCub.subSpecies = "Masai"
        
        println("lionCub should roar after this statement")
        lionCub.roar()
        
        lionCub.rubLionCubsBelly()
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func updateAnimal () {
    
        switch currentAnimal {
        
        // Wenn current animal bei "species" einen "Tiger" findet, _ sagt das der zweite wert unerheblich ist, dan wird eine Zufallszahl
        // aus dem lions.count erzeugt. Kann nur 0 oder 1 sein, gibt nur 2 löwen. Dann wird "species" auf "Lion" gesetzt und die Zufallszall dahinter gesetzt.
        
        case ("Tiger", _) :
        let randomIndex = Int(arc4random_uniform(UInt32(lions.count)))
        currentAnimal = ("Lion", randomIndex)
        
        
        default :
        let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        currentAnimal = ("Tiger", randomIndex)
        
        }
        
    }
    
        func updateView () {
        
         UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
        
            if self.currentAnimal.species ==  "Tiger" {
                let tiger = self.myTigers[self.currentAnimal.index]
                self.myImageView.image = tiger.image
                self.breedLabel.text = tiger.breed
                self.ageLabel.text = "\(tiger.age)"
                self.nameLabel.text = tiger.name
                self.randomFactLabel.text = tiger.randomFact()
                
            }
                
            else if self.currentAnimal.species == "Lion"    {
                    let lion = self.lions[self.currentAnimal.index]
                    self.myImageView.image = lion.image
                    self.breedLabel.text = lion.subSpecies
                    self.ageLabel.text = "\(lion.age)"
                    self.nameLabel.text = lion.name
                    self.randomFactLabel.text = lion.randomFact()
                
                }
            
            }, completion: { (finished:Bool) -> () in
                
         })
        
    }
    
    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
    
    
    updateAnimal()
    
    updateView()
        
        
    func updeteTiger () {
    
        var randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        
        while currentIndex == randomIndex {
            
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
            
        }
        
        self.currentIndex = randomIndex
        
        
        let tiger = myTigers[randomIndex]
        
        
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = ("\(tiger.age) years old")
            self.breedLabel.text = tiger.breed
            self.randomFactLabel.text = tiger.randomFact()
            
            
            }, completion: { (finished:Bool) -> () in
                
        }       )
        
        }

    
    }

}

