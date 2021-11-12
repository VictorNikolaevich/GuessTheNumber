//
//  ViewController2.swift
//  GuessTheNumber
//
//  Created by Admin on 10.11.2021.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var myLabel3: UILabel!
    
   var labelCount = 1
   
    @IBOutlet weak var myLabel: UILabel!
    
    var name = ""
    
    @IBOutlet weak var myLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel3.text = String(labelCount)
   
    }
    
    @IBAction func myButton2(_ sender: Any) {
        
        let randomNumberInt = Int.random(in: 1...100)
        myLabel.text = String(randomNumberInt)
        
        let textField = name
        let textFieldInt = Int(textField) ?? 0

        if randomNumberInt < textFieldInt {
            myLabel2.text = "<"
        } else if randomNumberInt > textFieldInt {
            myLabel2.text = ">"
        } else {
            myLabel2.text = "="
            let storyboard4 = UIStoryboard(name: "Main", bundle: nil)
            if let vc4 = storyboard4.instantiateViewController(withIdentifier: "VC4") as? ViewController4 {
                vc4.name5 = "You lose"
                show(vc4, sender: nil)
            }
                
                let newVC = storyboard?.instantiateViewController(withIdentifier: "VC4")
                present(newVC!, animated: true, completion: nil)
            }
        }
        
        @IBAction func myButton3(_ sender: Any) {
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            if let vc3 = storyboard.instantiateViewController(withIdentifier: "VC3") as? ViewController3 {
                vc3.name3 = name
                show(vc3, sender: nil)
            }
            
        }
}
