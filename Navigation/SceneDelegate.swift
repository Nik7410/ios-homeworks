//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Николай Чмеленко on 20.02.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        
        let profileVC = ProfileViewController()
        let feedVC = FeedViewController()
        
        let profileNavController = UINavigationController(rootViewController: profileVC)
        let feedNavController = UINavigationController(rootViewController: feedVC)
        
        profileNavController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.crop.circle"), tag: 0)
        feedNavController.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "note.text"), tag: 0)

        let tapBarController = UITabBarController()
        profileNavController.navigationBar.backgroundColor = .blue
        feedNavController.navigationBar.backgroundColor = .blue
        tapBarController.viewControllers = [profileNavController, feedNavController]
        tapBarController.tabBar.backgroundColor = .white
        window?.rootViewController = tapBarController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
       
    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {
 
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
 
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
 
    }


}

