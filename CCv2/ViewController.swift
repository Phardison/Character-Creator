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
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "paper_background.jpg")!)
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var label: UILabel!
    @IBAction func button(_ sender: Any) {
    
        self.label.text = "hello"
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
