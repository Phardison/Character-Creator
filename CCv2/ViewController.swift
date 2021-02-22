//
//  ViewController.swift
//  CCv2
//
//  Created by Patrick Hardison on 2/11/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "oldPageTexture.png")!)
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var rollTotal = 0
    
    
    
    @IBAction func button(_ sender: Any) {
        let resultArray = [rollD1(),rollD1(),rollD1(),rollD1()]
                                  
        self.image1.image = UIImage(named:"d6_\(resultArray[0])")
        self.image2.image = UIImage(named:"d6_\(resultArray[1])")
        self.image3.image = UIImage(named:"d6_\(resultArray[2])")
        self.image4.image = UIImage(named:"d6_\(resultArray[3])")
        
        let sumTop: Int =
            resultArray.reduce(0, +)
        totalLabel.text = String(sumTop - (resultArray.min()!))
        
        /*for index in 1...4 {
        let labelName = "label" + String(index)
        
        self.labelName.text = String(resultArray[0])
    }*/
    }
    
    func rollD1() -> Int {
        let number = Int.random(in: 1...6)
        return(number)
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
