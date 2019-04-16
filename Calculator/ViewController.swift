//
//  ViewController.swift
//  Calculator
//
//  Created by Sean Egger on 3/22/19.
//  Copyright © 2019 Sean Egger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let calc = MathFunction()
    
    @IBAction func calcButton(_ sender: Any) {
        let valA: Double = Double(aField!.text!)!
        let valB: Double = Double(bField!.text!)!
        let opString = operatorField.text
        switch opString {
        case "+":
            answerField.text = String(calc.calculate(a: valA, b: valB, sign: +))
        case "-":
            answerField.text = String(calc.calculate(a: valA, b: valB, sign: -))
        case "/":
            answerField.text = String(calc.calculate(a: valA, b: valB, sign: /))
        case "*":
            answerField.text = String(calc.calculate(a: valA, b: valB, sign: *))
        case "^":
            answerField.text = String(calc.powerOf(x: valA, toThe: valB))
        default:
            print("ERROR::NOT A RECOGNIZED OPERATOR: ")
            answerField.text = "Operator not recognized"
        }
        
    }
    
    @IBOutlet weak var aField: UITextField!
    @IBOutlet weak var bField: UITextField!
    @IBOutlet weak var answerField: UILabel!
    @IBOutlet weak var operatorField: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
   

}

