//
//  ViewController3.swift
//  GuessTheNumber
//
//  Created by Admin on 10.11.2021.
//

import UIKit

class ViewController3: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var myTextField2: UITextField!
    
    var name3 = ""
    var attemsCounter = 0
    
    
    @IBOutlet weak var myLabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTextField2.delegate = self
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField.text?.count == 0 && string == "0" {
            return false
        }
        if ((textField.text!) + string).count > 3 {
            return false
        }
        return true
    }
    
    @IBAction func myCompare(_ sender: Any) {
        
        let userTextInt = Int(name3) ?? 0
        let playerText = myTextField2.text!
        let playerTextInt = Int(playerText) ?? 0
        
        if playerTextInt == userTextInt {
            attemsCounter += 1
            myLabel3.text = "(=) Попытки \(attemsCounter)"
            
            let storyboard4 = UIStoryboard(name: "Main", bundle: nil)
            if let vc4 = storyboard4.instantiateViewController(withIdentifier: "VC4") as? ViewController4 {
                vc4.counterVC3 += attemsCounter
                //show(vc4, sender: nil)
            }
            
            //            let storyboard4 = UIStoryboard(name: "Main", bundle: nil)
            //            if let vc4 = storyboard4.instantiateViewController(withIdentifier: "VC4") as? ViewController4 {
            //                vc4.name5 = "You win"
            //                show(vc4, sender: nil)
            //            }
            //            let newVC = storyboard?.instantiateViewController(withIdentifier: "VC4")
            //            present(newVC!, animated: true, completion: nil)
            
        } else if playerTextInt > userTextInt {
            attemsCounter += 1
            myLabel3.text = ">"
        } else if playerTextInt < userTextInt {
            attemsCounter += 1
            myLabel3.text = "<"
        }
    }
    
    @IBAction func myButtonNext2(_ sender: Any) {
        
        let storyboard4 = UIStoryboard(name: "Main", bundle: nil)
        if let vc4 = storyboard4.instantiateViewController(withIdentifier: "VC4") as? ViewController4 {
            vc4.counterVC3 += attemsCounter
            show(vc4, sender: nil)
        }
        let newVC = storyboard?.instantiateViewController(withIdentifier: "VC4")
        present(newVC!, animated: true, completion: nil)
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//
//        if let vc2 = storyboard.instantiateViewController(withIdentifier: "VC2") as? ViewController2 {
//            vc2.name = name3
//            vc2.labelCount = vc2.labelCount + 1
//            show(vc2, sender: nil)
//        }
        
        }
    }

