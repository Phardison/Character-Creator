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
    
    @IBOutlet weak var Acrobatics: UILabel!
    @IBOutlet weak var AnimalHandling: UILabel!
    @IBOutlet weak var Arcana: UILabel!
    @IBOutlet weak var Athletics: UILabel!
    @IBOutlet weak var Deception: UILabel!
    @IBOutlet weak var History: UILabel!
    @IBOutlet weak var Insight: UILabel!
    @IBOutlet weak var Intimidation: UILabel!
    @IBOutlet weak var Investigation: UILabel!
    @IBOutlet weak var Medicine: UILabel!
    @IBOutlet weak var Nature: UILabel!
    @IBOutlet weak var Perception: UILabel!
    @IBOutlet weak var Performance: UILabel!
    @IBOutlet weak var Persuasion: UILabel!
    @IBOutlet weak var Religion: UILabel!
    @IBOutlet weak var SleightOfHand: UILabel!
    @IBOutlet weak var Stealth: UILabel!
    @IBOutlet weak var Survival: UILabel!
    
    
    
    @IBOutlet weak var AcrobaticsVal: UILabel!
    @IBOutlet weak var AnimalHandlingVal: UILabel!
    @IBOutlet weak var ArcanaVal: UILabel!
    @IBOutlet weak var AthleticsVal: UILabel!
    @IBOutlet weak var DeceptionVal: UILabel!
    @IBOutlet weak var HistoryVal: UILabel!
    @IBOutlet weak var InsightVal: UILabel!
    @IBOutlet weak var IntimidationVal: UILabel!
    @IBOutlet weak var InvestigationVal: UILabel!
    @IBOutlet weak var MedicineVal: UILabel!
    @IBOutlet weak var NatureVal: UILabel!
    @IBOutlet weak var PerceptionVal: UILabel!
    @IBOutlet weak var PerformanceVal: UILabel!
    @IBOutlet weak var PersuasionVal: UILabel!
    @IBOutlet weak var ReligionVal: UILabel!
    @IBOutlet weak var SleightOfHandVal: UILabel!
    @IBOutlet weak var StealthVal: UILabel!
    @IBOutlet weak var SurvivalVal: UILabel!
    
    /*
     Strength
    Athletics
    
     Dexterity
    Acrobatics
    Sleight of Hand
    Stealth
    
     Intelligence
    Arcana
    History
    Investigation
    Nature
    Religion
    
     Wisdom
    Animal Handling
    Insight
    Medicine
    Perception
    Survival
    
     Charisma
    Deception
    Intimidation
    Performance
    Persuasion
    */
 
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

    
    @IBOutlet weak var strMod: UILabel!
    @IBOutlet weak var dexMod: UILabel!
    @IBOutlet weak var conMod: UILabel!
    @IBOutlet weak var intMod: UILabel!
    @IBOutlet weak var wisMod: UILabel!
    @IBOutlet weak var chaMod: UILabel!
    
    @IBOutlet weak var strST: UILabel!
    @IBOutlet weak var dexST: UILabel!
    @IBOutlet weak var conST: UILabel!
    @IBOutlet weak var intST: UILabel!
    @IBOutlet weak var wisST: UILabel!
    @IBOutlet weak var chaST: UILabel!
    
    
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
    @IBOutlet weak var profBonus: UILabel!
    
    
    
    @IBAction func test(_ sender: Any) {
        updateCharSheet()
    }
    
    func calcModifier(x: Int) -> Int {
        var num = x
        if num <= 9{
            num -= 1
        }
        var result: Double = Double((num - 10) / 2)
        result.round(.down)
        return Int(result)
    }
    
    func updateCharSheet() {
        //class and race
        self.sheetClass.text = myCharacter.Cclass + " - " + String(myCharacter.level)
        self.sheetRace.text = myCharacter.race
        
        //stats
        let statNameArray: [String] = ["str", "dex", "con", "int", "wis", "cha"]
        let statLabelNameArray: [UILabel] = [strLabel, dexLabel, conLabel, intLabel, wisLabel, chaLabel]
        let statModNameArray: [UILabel] = [strMod, dexMod, conMod, intMod, wisMod, chaMod]
        
        for index in 0...statNameArray.count - 1 {
            statLabelNameArray[index].text = String(myCharacter.stats[statNameArray[index]] ?? 0)
            let x = calcModifier(x: myCharacter.stats[statNameArray[index]]!)
            
            if (x >= 0) {
                statModNameArray[index].text = "+" + String(x)
            } else{
                statModNameArray[index].text = String(x)
            }
            
        }
        
        //proficience bonus
        let switchLevel = myCharacter.level
        switch switchLevel {
        case 1..<5:
            myCharacter.profBonus = 2
        case 5..<9:
            myCharacter.profBonus = 3
        case 9..<13:
            myCharacter.profBonus = 4
        case 13..<17:
            myCharacter.profBonus = 5
        case 17..<21:
            myCharacter.profBonus = 6
        default:
            myCharacter.profBonus = 0
        }
        
        self.profBonus.text = "+" + String(myCharacter.profBonus)
       
        
        //saving throws
        let STNameArray: [UILabel] = [strSave, dexSave, conSave, intSave, wisSave, chaSave]
        
        let STNumberArray: [UILabel] = [strST, dexST, conST, intST, wisST, chaST]
        
        for index in 0...STNameArray.count - 1 {
            STNameArray[index].text = " "
        }
        
        //mark saving throws based on class
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
        
        //add proficiency bonys to saving throws
        for index in 0...STNumberArray.count - 1 {
            
            var x = calcModifier(x: myCharacter.stats[statNameArray[index]]!)
            if STNameArray[index].text == "X" {
                x += myCharacter.profBonus
            }
            
            if (x >= 0) {
                STNumberArray[index].text = "+" + String(x)
            } else{
                STNumberArray[index].text = String(x)
            }
        }
        
        //Skills
        let skillNameArray: [UILabel] = [Acrobatics, AnimalHandling, Arcana, Athletics, Deception, History, Insight, Intimidation, Investigation, Medicine, Nature, Perception, Performance, Persuasion, Religion, SleightOfHand, Stealth, Survival]
        
        let skillValArray: [UILabel] = [AcrobaticsVal, AnimalHandlingVal, ArcanaVal, AthleticsVal, DeceptionVal, HistoryVal, InsightVal, IntimidationVal, InvestigationVal, MedicineVal, NatureVal, PerceptionVal, PerformanceVal, PersuasionVal, ReligionVal, SleightOfHandVal, StealthVal, SurvivalVal]
        
        let stringSkillNameArray: [String] = ["Acrobatics", "AnimalHandling", "Arcana", "Athletics", "Deception", "History", "Insight", "Intimidation", "Investigation", "Medicine", "Nature", "Perception", "Performance", "Persuasion", "Religion", "SleightOfHand", "Stealth", "Survival"]
        
        //set all blank
        for index in 0...skillNameArray.count - 1 {
            skillNameArray[index].text = " "
        }
        myCharacter.skills.append("AnimalHandling")
        myCharacter.skills.append("Persuasion")
        
        //mark proficient skills
        for i in 0...myCharacter.skills.count - 1 {
            for n in 0...skillNameArray.count - 1 {
                if (myCharacter.skills[i] == stringSkillNameArray[n]) {
                    skillNameArray[n].text = "X"
                }
            }
        }
        
        //Add skill Values
        for n in 0...skillValArray.count - 1 {
            if (skillNameArray[n].text == "X") {
                let val = Int(skillValArray[n].text) + myCharacter.profBonus
                skillValArray[n].text = val
            }
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
