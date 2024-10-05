//
//  ViewController.swift
//  Calculator
//
//  Created by Altair on 03.10.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var Label: UILabel!
    
    
    @IBOutlet var textfield: UITextField!
    
    
    @IBOutlet var textfield2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touched(_ sender: Any) {
        
        //Label.text = textfield.text
        
        let a = textfield.text!
        
        let b = textfield2.text!
        
       
        
        if let numberA = Int(a),let numberB = Int(b){
            
            let sum = numberA + numberB
            
            Label.text = String(sum)
        } else {
            Label.text = "Введите 2 числа"
        }
        
        
        
    }
    
    @IBAction func minus(_ sender: Any) {
        
        let a = textfield.text!
        
        let b = textfield2.text!
        
        
        
        if let numberA = Int(a),let numberB = Int(b){
            
            let sum = numberA - numberB
            
            Label.text = String(sum)
        } else {
            Label.text = "Введите 2 числа"
        }
        
    }
    
    
    @IBAction func multiply(_ sender: Any) {
        
        
        let a = textfield.text!
        
        let b = textfield2.text!
        
        guard let numberA = Int(a),let numberB = Int(b) else  {
            Label.text = "Введите 2 числа"
            return
        }
        
        let sum = numberA * numberB
        Label.text = String(sum)
        
    }
    
    
    @IBAction func dividing(_ sender: Any) {
        let a = textfield.text!
        
        let b = textfield2.text!
        
        guard let numberA = Float(a),let numberB = Float(b) else  {
            Label.text = "Введите 2 числа"
            return
        }
        
        let sum = numberA / numberB
        Label.text = String(sum)
        
    }
    
    
    
    
}


