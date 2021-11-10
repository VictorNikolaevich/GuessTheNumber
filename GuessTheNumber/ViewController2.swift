//
//  ViewController2.swift
//  GuessTheNumber
//
//  Created by Admin on 10.11.2021.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    var name = ""
    var name2 = ""
    
    @IBOutlet weak var myLabel2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.text = name2
        
        let textField = name
        let textFieldInt = Int(textField) ?? 0
        let label = name2
        let labelInt = Int(label) ?? 0
            
        if labelInt < textFieldInt {
            myLabel2.text = "<"
        } else if labelInt > textFieldInt{
            myLabel2.text = ">"
            //} else {
    }
    

}
}
