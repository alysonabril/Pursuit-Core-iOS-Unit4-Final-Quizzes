//
//  SearchViewController.swift
//  Quizzes
//
//  Created by Alyson Abril on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchViewController: UITabBarController {
    
    let searchCell = SearchCVCell()
    
    lazy var quizCollectionView: UICollectionView = {
        let cvLayout = UICollectionViewFlowLayout()
        cvLayout.itemSize = CGSize.init(width: 100, height: 100)
        cvLayout.sectionInset = UIEdgeInsets.init(top: 50, left: 10, bottom: 20, right: 10)
        cvLayout.scrollDirection = .vertical
        
        let cv = UICollectionView.init(frame: self.view.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        cv.dataSource = self
        cv.delegate = self
        cv.backgroundColor = .lightGray
        cv.isScrollEnabled = true
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        quizCollectionView.register(SearchCVCell.self, forCellWithReuseIdentifier: "SearchCell")
        view.addSubview(quizCollectionView)
        view.addSubview(searchCell)
    }
    
    func setupQuizCV() {
        quizCollectionView.translatesAutoresizingMaskIntoConstraints = false
        quizCollectionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        quizCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 11).isActive = true
        quizCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -11).isActive = true
    }
}

extension SearchViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as? SearchCVCell else { return UICollectionViewCell() }
        return cell
    }
}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: 300, height: 250)
    }
}
