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
        
        ErrorMessage.text = ""
        
        guard let NumberOfQuestionsString = NumberOfQuestions.text, let QuestionCount = Int(NumberOfQuestionsString), QuestionCount > 0  else {
            ErrorMessage.text = "Please enter the number of questions"
            return
            
        }
        guard let StudentAnswerString = StudentAnswers.text, let StudentAnswerCount = Int(StudentAnswerString), StudentAnswerCount > 0 else {
            ErrorMessage.text = "Please enter student's answers"
            return
        }
        
        guard let CorrectAnswerString = CorrectAnswers.text, let CorrectAnswerCount = Int(CorrectAnswerString), CorrectAnswerCount > 0 else {
            ErrorMessage.text = "Please enter the correct answers"
            return
        }
        
        guard QuestionCount == StudentAnswerCount, CorrectAnswerCount == QuestionCount, StudentAnswerCount == CorrectAnswerCount else {
            ErrorMessage.text = "Please make sure all text fields are equal"
            return
        }
    
    }

}
