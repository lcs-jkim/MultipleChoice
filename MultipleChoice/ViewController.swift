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
    @IBOutlet weak var ErrorMessage2: UILabel!
    @IBOutlet weak var AnswerBox: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Give the focus to the first text field when opens up
        NumberOfQuestions.becomeFirstResponder()
        
    }
    
    @IBAction func Check(_ sender: Any) {
        
        // Clear ErrorMessage and ErrorMessage2 and guard statements
        ErrorMessage.text = ""
        ErrorMessage2.text = ""
        
        guard let NumberOfQuestionsString = NumberOfQuestions.text, let QuestionCount = Int(NumberOfQuestionsString), QuestionCount > 0  else {
            ErrorMessage.text = "Please enter the number of questions"
            return
            
        }
        guard let StudentAnswerString = StudentAnswers.text, StudentAnswerString.count > 0 else {
            ErrorMessage.text = "Please enter the student's answers"
            return
        }
        
        guard let CorrectAnswerString = CorrectAnswers.text, CorrectAnswerString.count > 0 else {
            ErrorMessage.text = "Please enter the correct answers"
            return
        }
        
        guard QuestionCount == StudentAnswerString.count, CorrectAnswerString.count == QuestionCount, StudentAnswerString.count == CorrectAnswerString.count else {
            ErrorMessage.text = "Please make sure all the text fields"
            ErrorMessage2.text = "are equal"
            return
        }
        
        
    
    }

}
