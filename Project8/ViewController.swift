//
//  ViewController.swift
//  Project8
//
//  Created by Pawel Wojcik on 26/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var scoreLabel: UILabel!
    var cluesLabel: UILabel!
    var answersLabel: UILabel!
    var currentAnswer: UITextField!
    var letterButtons: [UIButton]!
    
    
    
    override func loadView() {
        
        view = UIView()
        view.backgroundColor = .white
        
        scoreLabel = UILabel()
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.backgroundColor = .yellow
        scoreLabel.text = "Score = 0"
        view.addSubview(scoreLabel)
        scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        
        
        answersLabel = UILabel()
        answersLabel.translatesAutoresizingMaskIntoConstraints = false
        answersLabel.backgroundColor = .blue
        answersLabel.text = "ANSWERS"
        answersLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(answersLabel)
        answersLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 20).isActive = true
        answersLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        answersLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.4).isActive = true
    
        
        cluesLabel = UILabel()
        cluesLabel.translatesAutoresizingMaskIntoConstraints = false
        cluesLabel.backgroundColor = .red
        cluesLabel.text = "CLUES"
        cluesLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(cluesLabel)
        cluesLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 20).isActive = true
        cluesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        cluesLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6).isActive = true
        cluesLabel.heightAnchor.constraint(equalTo: answersLabel.heightAnchor).isActive = true
        
        
        currentAnswer = UITextField()
        currentAnswer.translatesAutoresizingMaskIntoConstraints = false
        currentAnswer.placeholder = "Enter answer here"
        currentAnswer.isUserInteractionEnabled = false
        currentAnswer.backgroundColor = .green
        currentAnswer.font = UIFont.systemFont(ofSize: 46)
        view.addSubview(currentAnswer)
        currentAnswer.topAnchor.constraint(equalTo: answersLabel.bottomAnchor, constant: 20).isActive = true
        currentAnswer.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
        
        
        let submit = UIButton(type: .system)
        submit.translatesAutoresizingMaskIntoConstraints = false
        submit.setTitle("SUBMIT", for: .normal)
        submit.backgroundColor = .cyan
        view.addSubview(submit)
        submit.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor, constant: 20).isActive = true
        submit.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: -75).isActive = true
        
        let clear = UIButton(type: .system)
        clear.translatesAutoresizingMaskIntoConstraints = false
        clear.setTitle("CLEAR", for: .normal)
        clear.backgroundColor = .cyan
        view.addSubview(clear)
        clear.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 75).isActive = true
        clear.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor, constant: 20).isActive = true
        
        
        let buttonsView = UIView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        buttonsView.backgroundColor = .gray
        view.addSubview(buttonsView)
        buttonsView.topAnchor.constraint(equalTo: submit.bottomAnchor, constant: 20).isActive = true
        buttonsView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
        buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
        buttonsView.heightAnchor.constraint(equalToConstant: 320).isActive = true
        buttonsView.widthAnchor.constraint(equalToConstant: 750).isActive = true
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

