//
//  ProfileCell.swift
//  Quizzes
//
//  Created by Alyson Abril on 2/3/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

//protocol ProfileViewDelegate: AnyObject {
//    func userNamePressed()
//}

class ProfileCell: UITableViewCell {
    

    lazy var userNameButton: UIButton = {
        let button = UIButton()
        button.setTitle("UserName", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(userNamePressed), for: .touchUpInside)
        return button
    }()
    
    @objc func userNamePressed() {
    
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(userNameButton)
       
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}

class Header: UITableViewHeaderFooterView {
    
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
      
    }
    
    
 

}

