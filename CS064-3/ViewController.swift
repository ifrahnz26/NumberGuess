//
//  ViewController.swift
//  CS064-3
//
//  Created by APPLE on 08/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var BackgroundView: UIView!
    
    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var NumberEnterTextField: UITextField!
    
    @IBOutlet weak var ResultLabel: UILabel!
    var attempts = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func GuessButton(_ sender: UIButton) {
        
        let appguess = String(arc4random_uniform(6))
        let userguess = NumberEnterTextField.text!

        if appguess==userguess
        {
            ResultLabel.backgroundColor = .green
            ResultLabel.textColor = .black
            ResultLabel.text = "You have guessed right!! Attempts made : \(attempts)"
            attempts = 1
            
        }
        else
        {
            ResultLabel.backgroundColor = .red
            ResultLabel.textColor = .black
            ResultLabel.text = "You are wrong!! It is \(appguess). Attempts made: \(attempts)"
            attempts+=1
        }
        
        
    }
    

}

