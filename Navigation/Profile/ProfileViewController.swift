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
        title = "Профиль"
        
        let profileHeaderView = ProfileHeaderView()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        profileHeaderView.setupView()
        
        let titleButton = UIButton()
        titleButton.translatesAutoresizingMaskIntoConstraints = false
        titleButton.backgroundColor = .blue
        titleButton.setTitle("Новый заголовок", for: .normal)
        
        view.addSubview(titleButton)
        
        titleButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        titleButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        titleButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        titleButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        titleButton.setTitleColor(.white, for: .highlighted)
        titleButton.addTarget(self, action: #selector(setNewTitle), for: .touchUpInside)
        
    }
    
    @objc func setNewTitle() {
        if title == "Профиль" {
            title = "Брэдд Питт"
        } else {
            title = "Профиль"
        }
    }
}
