//
//  ViewController.swift
//  MultipleChoice
//
//  Created by Kim, Jenis on 2019-12-10.
//  Copyright © 2019 Kim, Jenis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK PROPERTIES
    @IBOutlet weak var NumberOfQuestions: UITextField!
    @IBOutlet weak var StudentAnswers: UITextField!
    @IBOutlet weak var CorrectAnswers: UITextField!
    @IBOutlet weak var ErrorMessage: UILabel!
    @IBOutlet weak var AnswerBox: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Give the focus to the first text field when opens up
        NumberOfQuestions.becomeFirstResponder()
        
    }
    
    @IBAction func Check(_ sender: Any) {
        
        
        
    }
    

}

