//
//  ViewController.swift
//  GuessTheNumber
//
//  Created by Admin on 10.11.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func goVC3(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        if let vc2 = storyboard.instantiateViewController(withIdentifier: "VC2") as? ViewController2 {
            vc2.name = myTextField.text!
            show(vc2, sender: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTextField.delegate = self
        
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
    
    @IBAction func myTextButton(_ sender: Any) {
        
        
    }
    
}
