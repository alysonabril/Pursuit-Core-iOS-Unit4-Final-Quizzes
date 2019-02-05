//
//  ProfileTableViewController.swift
//  Quizzes
//
//  Created by Alyson Abril on 2/5/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileTableViewController: UITableViewController {
    
    let headerView: UIView = {
    let header = UIView.init(frame: CGRect(x: 1, y: 50, width: 276, height: 30))
    header.backgroundColor = .lightGray
    return header
    }()
    
    let labelView: UILabel = {
    let label = UILabel.init(frame: CGRect(x: 4, y: 5, width: 276, height: 24))
    label.text = "Edit Photos"
    label.font = UIFont(name: "noteworthy", size: 18)
    return label
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Profile"
        tableView.register(ProfileCell.self, forCellReuseIdentifier: "profileCell")
        headerView.addSubview(labelView)
        self.tableView.tableHeaderView = headerView
        tableView.sectionHeaderHeight = 50
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath)
    }
    

}
