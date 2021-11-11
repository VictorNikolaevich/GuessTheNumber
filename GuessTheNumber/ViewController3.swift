//
//  ViewController3.swift
//  GuessTheNumber
//
//  Created by Admin on 10.11.2021.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var myTextField2: UITextField!
    
    var name3 = ""
    
    @IBOutlet weak var myLabel3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func myCompare(_ sender: Any) {
        
        let userText = name3
        let userTextInt = Int(userText) ?? 0
        let playerText = myTextField2.text!
        let playerTextInt = Int(playerText) ?? 0
        
        if playerTextInt < userTextInt {
            myLabel3.text = "<"
        } else if playerTextInt > userTextInt {
            myLabel3.text = ">"
        }
        
    }
    
    @IBAction func myButton4(_ sender: Any) {
    }
    
}
