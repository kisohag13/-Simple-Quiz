//
//  ViewController.swift
//  Quiz
//
//  Created by Kamrul Islam on 20/09/2017.
//  Copyright © 2017 Rango. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    let question : [String] = [
        "what is the capital of Bangladesh",
        "what is the value of Pi"
    ]
    
    let answer : [String] = [
    "Dhaka","22/7"
        ]
    var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = question[currentQuestionIndex]
        
    }

    @IBAction func showNextQuestion(_ sender: Any) {
        
        currentQuestionIndex += 1
        if currentQuestionIndex == question.count {
            currentQuestionIndex = 0
        }
    questionLabel.text = question[currentQuestionIndex]
        answerLabel.text = "???"
    }
    
    
    @IBAction func showAnswer(_ sender: Any) {
        
        answerLabel.text = answer[currentQuestionIndex]
        
    }

}

