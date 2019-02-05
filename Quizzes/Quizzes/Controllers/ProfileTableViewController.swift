//
//  ProfileTableViewController.swift
//  Quizzes
//
//  Created by Alyson Abril on 2/5/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Profile"
        tableView.register(ProfileCell.self, forCellReuseIdentifier: "profileCell")
        tableView.register(Header.self, forCellReuseIdentifier: "headerId")
        tableView.sectionHeaderHeight = 50
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath)
    }
    

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return tableView.dequeueReusableHeaderFooterView(withIdentifier: "headerId")
    }
}
