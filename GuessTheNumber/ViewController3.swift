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
        
        let userTextInt = Int(name3) ?? 0
        let playerText = myTextField2.text!
        let playerTextInt = Int(playerText) ?? 0
        
        if playerTextInt == userTextInt {
            myLabel3.text = "="
            let storyboard4 = UIStoryboard(name: "Main", bundle: nil)
            if let vc4 = storyboard4.instantiateViewController(withIdentifier: "VC4") as? ViewController4 {
                vc4.name5 = "You win"
                show(vc4, sender: nil)
            }
            
            let newVC = storyboard?.instantiateViewController(withIdentifier: "VC4")
            present(newVC!, animated: true, completion: nil)
            
        } else if playerTextInt > userTextInt {
            myLabel3.text = ">"
        } else if playerTextInt < userTextInt {
            myLabel3.text = "<"
        }
        
    }
    
    @IBAction func myButtonNext2(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        if let vc2 = storyboard.instantiateViewController(withIdentifier: "VC2") as? ViewController2 {
            vc2.name = name3
            vc2.labelCount = vc2.labelCount + 1
            show(vc2, sender: nil)
        }
        
        }
    }

