//
//  ViewController4.swift
//  GuessTheNumber
//
//  Created by Admin on 11.11.2021.
//

import UIKit

class ViewController4: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    var name4 = ""
    var name5 = ""
    var counterVC2 = 0
    var counterVC3 = 0
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
//        myLabel.text = name4
//        myLabel.text = name5
        
        if counterVC2 > counterVC3 {
            myLabel.text = "You lose"
        } else if counterVC2 < counterVC3 {
            myLabel.text = "You win"
        } else {
            myLabel.text = "Увы ничья"
        }
        
        
    }
    
    
}
