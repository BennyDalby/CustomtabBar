//
//  ViewController.swift
//  Tab
//
//  Created by mac on 10/23/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpTabBars()
    }

    
    func setUpTabBars() {
        
        
//        let selfController = UINavigationController(rootViewController: SelfMonitorViewController())
//        selfController.tabBarItem.image = UIImage(named: "monitor-with-mouse-cursor.png")
//        selfController.tabBarItem.selectedImage = UIImage(named: "computer-screen.png")
//
//        let progressController = UINavigationController(rootViewController: ProgressViewController())
//        progressController.tabBarItem.image = UIImage(named: "progress-report.png")
//        progressController.tabBarItem.selectedImage = UIImage(named: "rising.png")
        
//        let addController = UINavigationController(rootViewController: AddButtonViewController())
//        addController.tabBarItem.image = UIImage(named: "")
//        addController.tabBarItem.selectedImage = UIImage(named: "")
        
        
        let selfController = setTabBArForRootViewController(vc: SelfMonitorViewController(), imageName: "monitor-with-mouse-cursor.png", selectedImageName: "computer-screen.png")
        let progressController = setTabBArForRootViewController(vc: ProgressViewController(), imageName:  "progress-report.png", selectedImageName: "rising.png")
        
        let addController = setTabBArForRootViewController(vc: AddButtonViewController(), imageName:  "", selectedImageName: "")
        
        
        viewControllers = [selfController,addController,progressController]
        setupMiddleButton()
    }
    
    
    func setupMiddleButton() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))

        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height
        menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
        menuButton.frame = menuButtonFrame

        menuButton.backgroundColor = UIColor.clear
        menuButton.layer.cornerRadius = menuButtonFrame.height/2
        view.addSubview(menuButton)

        menuButton.setImage(UIImage(named: "add.png"), for: .normal)
        menuButton.addTarget(self, action: #selector(ViewController.menuButtonAction), for: .touchUpInside)

        view.layoutIfNeeded()
    }
    
    @objc func menuButtonAction(sender: UIButton) {
        //selectedIndex = 2
        
        showAlert()
    }
    
    func showAlert () {
        
        let alertController = UIAlertController(title: "Add icon pressed", message:
            "Add the extra menu items here", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }

}

extension UITabBarController {
    
    
    func setTabBArForRootViewController(vc: UIViewController ,imageName: String ,selectedImageName: String) -> UINavigationController {
    
        let navigationController = UINavigationController(rootViewController: vc)
        navigationController.tabBarItem.selectedImage = UIImage(named: selectedImageName)
        navigationController.tabBarItem.image = UIImage(named: imageName)
    
        return navigationController
    }
}

