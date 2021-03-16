//
//  ViewController.swift
//  CCv2
//
//  Created by Patrick Hardison on 2/11/21.
//

import UIKit

var myCharacter = Character()

class ViewController: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "oldPageTexture.png")!)
        // Do any additional setup after loading the view.
    }
    
    
     
    //PAGE 2
    @IBOutlet weak var raceLabel: UILabel!
    var raceIndex = 0
    
    let raceData = ["Dragonborn", "Dwarf", "Elf", "High Elf", "Drow", "Gnome", "Half-elf", "Halfling", "Half-Orc", "Human", "Tiefling"]
    
    @IBAction func raceLeft(_ sender: Any) {
        if raceIndex == 0 {
            raceIndex = raceData.count - 1
        } else {
            raceIndex -= 1
        }
        updateRace()
    }
    
    @IBAction func raceRight(_ sender: Any) {
        if raceIndex == raceData.count - 1 {
            raceIndex = 0
        } else {
            raceIndex += 1
        }
        updateRace()
    }
    
    func updateRace() {
        myCharacter.race = raceData[raceIndex]
        self.raceLabel.text = myCharacter.race
    }
    
    //PAGE 3
    
    @IBOutlet weak var classLabel: UILabel!
    var classSelected = "Barbarian"
    var classIndex = 0
    
    let classData = ["Barbarian", "Bard", "Cleric", "Druid", "Fighter", "Monk", "Paladin", "Ranger", "Rogue", "Sorcerer", "Wizard", "Warlock"]
    
    @IBAction func classLeft(_ sender: Any) {
        if classIndex == 0 {
            classIndex = classData.count - 1
        } else {
            classIndex -= 1
        }
        updateClass()
    }
    
    @IBAction func classRight(_ sender: Any) {
        if classIndex == classData.count - 1 {
            classIndex = 0
        } else {
            classIndex += 1
        }
        updateClass()
        
    }
    
    func updateClass() {
        myCharacter.Cclass = classData[classIndex]
        self.classLabel.text = myCharacter.Cclass
    }

    //PAGE 4
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    
    
    
    @IBAction func statRollButton(_ sender: Any) {
        let resultArray: [Int] = [rollD1(),rollD1(),rollD1(),rollD1()]
                                  
        self.image1.image = UIImage(named:"d6_\(resultArray[0])")
        self.image2.image = UIImage(named:"d6_\(resultArray[1])")
        self.image3.image = UIImage(named:"d6_\(resultArray[2])")
        self.image4.image = UIImage(named:"d6_\(resultArray[3])")
        
        let sumTop: Int =
            resultArray.reduce(0, +)
        totalLabel.text = String(sumTop - (resultArray.min()!))
    }
    
    //MISC
    
    func rollD1() -> Int {
        let number = Int.random(in: 1...6)
        return(number)
    }
    
    
    @IBOutlet weak var classtest: UILabel!
    @IBOutlet weak var racetest: UILabel!
    
   
    
    @IBAction func bullshit2(_ sender: Any) {
        self.classtest.text = myCharacter.Cclass
        self.racetest.text = myCharacter.race
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
