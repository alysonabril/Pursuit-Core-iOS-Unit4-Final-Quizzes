//
//  QuizViewController.swift
//  Quizzes
//
//  Created by Alyson Abril on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizViewController: UITabBarController {
    
    let button: UIButton = {
        let button = UIButton()
    button.backgroundColor = UIColor.black
    button.addTarget(self, action: #selector(pushToNextVC), for: .touchUpInside)
    return button
    }()
    
    @objc private func pushToNextVC() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
    }
    

}
