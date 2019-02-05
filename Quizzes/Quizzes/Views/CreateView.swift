//
//  CreateView.swift
//  Quizzes
//
//  Created by Alyson Abril on 2/3/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateView: UIView {
    
    
    lazy var titleTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        textField.placeholder = "Enter Title Name"
        textField.font = UIFont(name: "noteworthy", size: 16)
        textField.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return textField
    }()
    
    
    lazy var firstFactTextView: UITextView = {
        let tv = UITextView()
        tv.text = "Enter first fact"
        tv.font = UIFont.init(name: "noteworthy", size: 15)
        tv.textColor = .black
        tv.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return tv
    }()
    
    lazy var secondFactTextView: UITextView = {
        let tv = UITextView()
        tv.font = UIFont.init(name: "noteworthy", size: 15)
        tv.text = "Enter second fact"
        tv.textColor = .black
        tv.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return tv
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        backgroundColor = .white
        setTitleTextField()
        setFirstFactTV()
        setSecondFactTV()
    }
    
    func setTitleTextField() {
        addSubview(titleTextField)
        titleTextField.translatesAutoresizingMaskIntoConstraints = false
        titleTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 25).isActive = true
        titleTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        titleTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
    }
    
    func setFirstFactTV() {
        addSubview(firstFactTextView)
        firstFactTextView.translatesAutoresizingMaskIntoConstraints = false
        firstFactTextView.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 15).isActive = true
        firstFactTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        firstFactTextView.trailingAnchor.constraint(equalTo:  trailingAnchor, constant: -11).isActive = true
        firstFactTextView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func setSecondFactTV() {
        addSubview(secondFactTextView)
        secondFactTextView.translatesAutoresizingMaskIntoConstraints = false
        secondFactTextView.topAnchor.constraint(equalTo: firstFactTextView.bottomAnchor, constant: 11).isActive = true
        secondFactTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        secondFactTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        secondFactTextView.heightAnchor.constraint(equalToConstant: 200).isActive = true

    }
}
