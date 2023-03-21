//
//  UITabBarController.swift
//  Navigation
//
//  Created by Николай Гринько on 30.01.2023.
//
import UIKit


final class TabBarController: UITabBarController {
    
    private let profileVC = ProfileViewController()
    private let feedVC = FeedViewController()
    private let postVC = PostViewController()
    private let loginVC = LogInViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        setupControllers()
    }
    
    private func setupControllers() {
        let navigationController = UINavigationController(rootViewController: feedVC)
        feedVC.tabBarItem.title = "Лента"
        feedVC.tabBarItem.image = UIImage(systemName: "house.circle")
        
        let loginController = UINavigationController(rootViewController: loginVC)
        loginVC.tabBarItem.title = "Профиль"
        loginVC.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        
        viewControllers = [loginController, navigationController]
    }
    
    
    
    
    //MARK: - Settings NC
    private func createNavController(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage)?.withAlignmentRectInsets(.init(top: 5, left: 0, bottom: 0, right: 0)), tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 0)
        
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        
        return navController
    }
}

