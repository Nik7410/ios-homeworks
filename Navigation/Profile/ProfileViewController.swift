//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Николай Чмеленко on 20.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        self.title = "Profile"
        let profileHeaderView = ProfileHeaderView()
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(profileHeaderView)
    }
    
    override func viewWillLayoutSubviews() {
        self.view.subviews.first?.frame = self.view.frame
        
    }
}
