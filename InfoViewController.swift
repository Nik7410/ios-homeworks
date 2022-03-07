//
//  InfoViewController.swift
//  Navigation
//
//  Created by Николай Чмеленко on 20.02.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let alertButton = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
        alertButton.setTitle("Alert", for: .normal)
        alertButton.backgroundColor = .brown
        alertButton.addTarget(self, action: #selector(alert), for: .touchUpInside)
        view.addSubview(alertButton)

    }
    
    @objc func alert() {
        let alertVC = UIAlertController(title: "AlertTitle", message: "AlertMessage", preferredStyle: .alert)
        let firstAction = UIAlertAction(title: "First alert action", style: .default) { _ in
    print ("First alert action")
}
        let secondAction = UIAlertAction(title: "Second alert action", style: .default) { _ in
    print ("Second alert action")
}
        alertVC.addAction(firstAction)
        alertVC.addAction(secondAction)

        self.present(alertVC, animated: true, completion: nil)
    }

}
