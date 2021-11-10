//
//  TabBarViewController.swift
//  TravelApp
//
//  Created by Apple New on 2021-10-31.
//

import UIKit
class TabBarViewController: UITabBarController{
    
    override func viewDidLoad() {
        
        let homeVC = HomeViewController()
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "homeTab"), tag: 0)
        
        let friendVC = FriendsViewController()
        friendVC.tabBarItem = UITabBarItem(title: "friends", image: UIImage(named: "FriendsTab"), tag: 1)
        
        let profileVC = ProfileViewController()
        profileVC.tabBarItem = UITabBarItem(title: "profile", image: UIImage(named: "ProfileTab"), tag: 2)
        
        tabBar.backgroundColor = UIColor(hexString: "#F9F9F9")
        tabBar.tintColor = UIColor(hexString: "#5BCFC2")
        
        
        viewControllers = [homeVC, friendVC, profileVC]
        

        
    }
    
}
