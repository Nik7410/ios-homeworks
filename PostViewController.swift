//
//  PostViewController.swift
//  Navigation
//
//  Created by Николай Чмеленко on 20.02.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var postTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .darkGray

                self.title = postTitle
                
                let infoBarItem: UIBarButtonItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(openInfo))
                navigationItem.rightBarButtonItem = infoBarItem
            }
            
            @objc func openInfo() {
                let infoVC = InfoViewController()
                navigationController?.present(infoVC, animated: true)
            }
        }
