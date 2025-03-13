//
//  ViewController.swift
//  Trivia
//
//  Created by Emma Saccone on 3/12/25.
//
import UIKit

class ViewController: UIViewController {

    
    // MARK: - Outlets (Connect these in Storyboard)
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    // MARK: - Data Model
    // Sample questions and answers
    let questions = [
        (question: "What is the capital of France?", answers: ["Paris", "London", "Berlin", "Rome"]),
        (question: "What is 2 + 2?", answers: ["3", "4", "5", "6"]),
        (question: "Which color is a mix of red and white?", answers: ["Pink", "Purple", "Green", "Orange"])
    ]
    
    var currentQuestionIndex = 0

    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        showQuestion()
    }

    // MARK: - Functions
    func showQuestion() {
        let currentQuestion = questions[currentQuestionIndex]
        questionLabel.text = currentQuestion.question
        answerButton1.setTitle(currentQuestion.answers[0], for: .normal)
        answerButton2.setTitle(currentQuestion.answers[1], for: .normal)
        answerButton3.setTitle(currentQuestion.answers[2], for: .normal)
        answerButton4.setTitle(currentQuestion.answers[3], for: .normal)
    }

    // MARK: - Actions (Connect all buttons to this action)
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        // Go to the next question
        currentQuestionIndex += 1

        // If we reach the end, restart
        if currentQuestionIndex >= questions.count {
            currentQuestionIndex = 0
        }

        // Show the next question
        showQuestion()
    }
}


