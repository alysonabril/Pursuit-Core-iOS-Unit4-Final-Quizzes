//
//  SearchCVCell.swift
//  Quizzes
//
//  Created by Alyson Abril on 2/3/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchCVCell: UICollectionViewCell {
    
    lazy var addToFavoritesButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "add-icon-filled"), for: .normal)
        button.addTarget(self, action: #selector(buttonDoesThing), for: .touchUpInside)
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 50, bottom: 50, right: 5)
        return button
    }()
    
    @objc func buttonDoesThing() {
        backgroundColor = .magenta
    }
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "words go here"
        label.font = UIFont(name: "noteworthy", size: 16)
        label.textColor = .black
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = #colorLiteral(red: 1, green: 0.8705980182, blue: 0.95103544, alpha: 1)
        cellButtonConstraints()
        setupTitle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        cellButtonConstraints()
        setupTitle()
    }
    
    func cellButtonConstraints() {
        addSubview(addToFavoritesButton)
        addToFavoritesButton.translatesAutoresizingMaskIntoConstraints = false
        addToFavoritesButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        addToFavoritesButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
    }
    
    func setupTitle() {
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 5).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        
    }
}
