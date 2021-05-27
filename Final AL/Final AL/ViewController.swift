//
//  ViewController.swift
//  Final AL
//
//  Created by user167306 on 12/4/20.
//  Copyright © 2020 user167306. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cG: UILabel!
    @IBOutlet weak var dG: UILabel!
    @IBOutlet weak var pEW: UILabel!
    @IBOutlet weak var cgTF: UITextField!
    @IBOutlet weak var dgTF: UITextField!
    @IBOutlet weak var pewTF: UITextField!
    @IBOutlet weak var cB: UIButton!
    @IBOutlet weak var pN: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cG.text = "Current Grade %"
        dG.text = "Desired Grade %"
        pEW.text = "Exam is Worth %"
        cB.setTitle("Calculate", for: .normal)
        pN.text = ""
        
    }
    @IBAction func cbA(_ sender: UIButton) {
        let current = Double(cgTF.text!)!
        let goal = Double(dgTF.text!)!
        let finalWeight = Double(pewTF.text!)!
        let required = (goal - current * (1-finalWeight/100)) / finalWeight * 100
        pN.text = String(required)
        if Int(required) > 100 {view.backgroundColor = .red ; cG.text = "You"; dG.text = "Help"; pEW.text = "To"; cgTF.text = "Need"; dgTF.text = "Talk"; pewTF.text = "The"; cB.setTitle("Teacher", for: .normal) }
        else {view.backgroundColor = .green}
    }
}
