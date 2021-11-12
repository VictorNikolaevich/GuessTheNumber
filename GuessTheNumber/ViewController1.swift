//
//  ViewController1.swift
//  GuessTheNumber
//
//  Created by Admin on 12.11.2021.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func myButtonNext(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        if let vc2 = storyboard.instantiateViewController(withIdentifier: "VC2") as? ViewController2 {
            vc2.labelCount = vc2.labelCount + 1
            show(vc2, sender: nil)
        }
    }
}
