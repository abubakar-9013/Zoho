//
//  TabViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/1/20.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeController = UINavigationController(rootViewController: HomeViewController())
        homeController.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "tab-home"), tag: 0)
        self.tabBar.tintColor = .black
        
        let tabBarList = [homeController]
        viewControllers = tabBarList
        // Do any additional setup after loading the view.
    }
    

}
