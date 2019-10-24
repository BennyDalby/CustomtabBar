//
//  ViewController.swift
//  CustomTab
//
//  Created by mac on 10/23/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tabBar.barTintColor = UIColor.lightGray
        view.backgroundColor = UIColor.white
        setupBars()
    }

    func setupBars() {
        
        let selfMonitorController = UINavigationController(rootViewController: SelfMonitorViewController())
        selfMonitorController.tabBarItem.selectedImage = UIImage(named: "computer-screen.png")
        selfMonitorController.tabBarItem.image = UIImage(named: "monitor-with-mouse-cursor.png")
        
        let progressController = UINavigationController(rootViewController: ProgressViewController())
        progressController.tabBarItem.image = UIImage(named: "progress-report.png")
        progressController.tabBarItem.selectedImage = UIImage(named: "rising.png")
        
        viewControllers = [selfMonitorController,progressController]
        
        
    }

}

