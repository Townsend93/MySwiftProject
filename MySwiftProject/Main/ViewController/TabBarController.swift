//
//  TabBarController.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/19.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = UIColor.blue
        configureChildViewControllers()
        
    }
    
   private func configureChildViewControllers() {
    
    addCildViewController(withViewController: UIViewController(),
                          itemTitle: "Home",
                          normalImage: #imageLiteral(resourceName: "personal_business-icon"),
                          selectedImage: #imageLiteral(resourceName: "personal_business-on-icon"))
    
    addCildViewController(withViewController: UIViewController(),
                          itemTitle: "Home",
                          normalImage: #imageLiteral(resourceName: "group_business-icon"),
                          selectedImage: #imageLiteral(resourceName: "group_business-on-icon"))
    
    addCildViewController(withViewController: UIViewController(),
                          itemTitle: "Home",
                          normalImage: #imageLiteral(resourceName: "news-icon"),
                          selectedImage: #imageLiteral(resourceName: "news-on-icon"))
    
    addCildViewController(withViewController: UIViewController(),
                          itemTitle: "Home",
                          normalImage: #imageLiteral(resourceName: "mine-icon"),
                          selectedImage: #imageLiteral(resourceName: "mine-on-icon"))
    
    }
    
    
    //add childViewControllers
   private func addCildViewController(withViewController viewController: UIViewController, itemTitle: String, normalImage: UIImage, selectedImage: UIImage)  {
        
        viewController.tabBarItem.title = itemTitle
        viewController.tabBarItem.image = normalImage
        viewController.tabBarItem.selectedImage = selectedImage
        
        let childVC: BaseNavController =  BaseNavController(rootViewController: viewController)
        
        addChildViewController(childVC)
        
    }
    
}
