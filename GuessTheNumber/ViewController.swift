//
//  ViewController.swift
//  GuessTheNumber
//
//  Created by Admin on 10.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
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
        
    }
    
    
}

