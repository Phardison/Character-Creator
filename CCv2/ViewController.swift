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
    var raceIndex = -1
    
    let raceData = ["Dragonborn", "Dwarf", "Elf", "High Elf", "Drow", "Gnome", "Half-elf", "Halfling", "Half-Orc", "Human", "Tiefling"]
    
    @IBAction func raceLeft(_ sender: Any) {
        if raceIndex == 0 || raceIndex == -1 {
            raceIndex = raceData.count - 1
        } else {
            raceIndex -= 1
        }
        updateRace()
    }
    
    @IBAction func raceRight(_ sender: Any) {
        if raceIndex == raceData.count - 1 || raceIndex == -1 {
            raceIndex = 0
        } else {
            raceIndex += 1
        }
        updateRace()
    }
    
    func updateRace() {
        myCharacter.race = raceData[raceIndex]
        self.raceLabel.text = myCharacter.race
        //updateCharSheet()
    }
    
    //PAGE 3
    
    @IBOutlet weak var classLabel: UILabel!
    var classIndex = -1
    
    let classData = ["Barbarian", "Bard", "Cleric", "Druid", "Fighter", "Monk", "Paladin", "Ranger", "Rogue", "Sorcerer", "Wizard", "Warlock"]
    
    @IBAction func classLeft(_ sender: Any) {
        if classIndex == 0 || classIndex == -1 {
            classIndex = classData.count - 1
        } else {
            classIndex -= 1
        }
        updateClass()
    }
    
    @IBAction func classRight(_ sender: Any) {
        if classIndex == classData.count - 1 || classIndex == -1 {
            classIndex = 0
        } else {
            classIndex += 1
        }
        updateClass()
        
    }
    
    func updateClass() {
        myCharacter.Cclass = classData[classIndex]
        self.classLabel.text = myCharacter.Cclass
        //updateCharSheet()
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
    
    
    @IBAction func statUpdate(_ sender: Any) {
        myCharacter.stats["str"] = Int(strInput.text!)
        myCharacter.stats["dex"] = Int(dexInput.text!)
        myCharacter.stats["con"] = Int(conInput.text!)
        myCharacter.stats["int"] = Int(intInput.text!)
        myCharacter.stats["wis"] = Int(wisInput.text!)
        myCharacter.stats["cha"] = Int(chaInput.text!)
    }
    
    @IBOutlet weak var strInput: UITextField!
    
    @IBOutlet weak var dexInput: UITextField!
    
    @IBOutlet weak var conInput: UITextField!

    @IBOutlet weak var intInput: UITextField!
    
    @IBOutlet weak var wisInput: UITextField!
    
    @IBOutlet weak var chaInput: UITextField!
    
    //PAGE 5
    
    //PAGE 6
    @IBOutlet weak var strSave: UILabel!
    @IBOutlet weak var dexSave: UILabel!
    @IBOutlet weak var conSave: UILabel!
    @IBOutlet weak var intSave: UILabel!
    @IBOutlet weak var wisSave: UILabel!
    @IBOutlet weak var chaSave: UILabel!
    
    
    @IBOutlet weak var strLabel: UILabel!
    
    @IBOutlet weak var dexLabel: UILabel!
    
    @IBOutlet weak var conLabel: UILabel!
    
    @IBOutlet weak var intLabel: UILabel!
    
    @IBOutlet weak var wisLabel: UILabel!
    
    @IBOutlet weak var chaLabel: UILabel!
    
    
    /*
    Barbarian: Str, Con
    Bard: Dex, Cha
    Cleric: Wis, Cha
    Druid: Int, Wis
    Fighter: Str, Con
    Monk: Str, Dex
    Paladin: Wis, Cha
    Ranger: Str, Dex
    Rogue: Dex, Int
    Sorcerer: Con, Cha
    Warlock: Wis, Cha
    Wizard: Int, Wis
    */
    
    //MISC
    
    func rollD1() -> Int {
        let number = Int.random(in: 1...6)
        return(number)
    }
    
    
    @IBOutlet weak var sheetRace: UILabel!
    @IBOutlet weak var sheetClass: UILabel!
    
    @IBAction func test(_ sender: Any) {
        updateCharSheet()
    }
    
    
    func updateCharSheet() {
        //class and race
        self.sheetClass.text = myCharacter.Cclass + " - 0"
        self.sheetRace.text = myCharacter.race
        
        //stats
        self.strLabel.text = String(myCharacter.stats["str"] ?? 0)
        self.dexLabel.text = String(myCharacter.stats["dex"] ?? 0)
        self.conLabel.text = String(myCharacter.stats["con"] ?? 0)
        self.intLabel.text = String(myCharacter.stats["int"] ?? 0)
        self.wisLabel.text = String(myCharacter.stats["wis"] ?? 0)
        self.chaLabel.text = String(myCharacter.stats["cha"] ?? 0)
        
        
        
        //saving throws
        self.strSave.text = " "
        self.dexSave.text = " "
        self.conSave.text = " "
        self.intSave.text = " "
        self.wisSave.text = " "
        self.chaSave.text = " "
        
        if myCharacter.Cclass == "Barbarian" {
            self.strSave.text = "X"
            self.conSave.text = "X"
        } else if myCharacter.Cclass == "Bard" {
            self.dexSave.text = "X"
            self.chaSave.text = "X"
        } else if myCharacter.Cclass == "Cleric" {
            self.wisSave.text = "X"
            self.chaSave.text = "X"
        } else if myCharacter.Cclass == "Druid" {
            self.intSave.text = "X"
            self.wisSave.text = "X"
        } else if myCharacter.Cclass == "Fighter" {
            self.strSave.text = "X"
            self.conSave.text = "X"
        } else if myCharacter.Cclass == "Monk" {
            self.strSave.text = "X"
            self.dexSave.text = "X"
        } else if myCharacter.Cclass == "Paladin" {
            self.wisSave.text = "X"
            self.chaSave.text = "X"
        } else if myCharacter.Cclass == "Ranger" {
            self.dexSave.text = "X"
            self.intSave.text = "X"
        } else if myCharacter.Cclass == "Rogue" {
            self.dexSave.text = "X"
            self.intSave.text = "X"
        } else if myCharacter.Cclass == "Sorcerer" {
            self.conSave.text = "X"
            self.chaSave.text = "X"
        } else if myCharacter.Cclass == "Warlock" {
            self.wisSave.text = "X"
            self.chaSave.text = "X"
        } else if myCharacter.Cclass == "Wizard" {
            self.intSave.text = "X"
            self.wisSave.text = "X"
        }
        
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
