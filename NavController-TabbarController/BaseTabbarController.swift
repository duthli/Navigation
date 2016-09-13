//
//  BaseTabbarController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/17/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseTabbarController: UITabBarController, UITabBarControllerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor(red: 0.149, green: 0.2, blue: 0.255 , alpha: 1.0)
        tabBar.translucent = false
        
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.whiteColor()], forState: .Normal)

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let bookVC = UIStoryboard.init(name: "Main",bundle:nil).instantiateViewControllerWithIdentifier("YourBookVC") as! YourBookController
        let homeVC = UIStoryboard.init(name: "Main",bundle:nil).instantiateViewControllerWithIdentifier("HomeVC") as! HomeViewController
        let profileVC = UIStoryboard.init(name:"Main",bundle:nil).instantiateViewControllerWithIdentifier("ProfileVC") as! ProfileViewController
        
        let bookNav = BaseNavigationController(rootViewController: bookVC)
        let homeNav = BaseNavigationController(rootViewController: homeVC)
        let profileNav = BaseNavigationController(rootViewController: profileVC)
        
        viewControllers = [bookNav,homeNav,profileNav]
        
//        profileVC.title = "profile"
//        homeVC.title = "home"
//        bookVC.title = "book"
        settingNavForEachController(profileVC, transparent: true, navTitle: "Thong Tin", tabbarTitle: "profile", image:"Profile", selectedImg:"Selected-Profile")
        settingNavForEachController(homeVC, transparent: true, navTitle: "Trang chu", tabbarTitle: "Home", image:"Home", selectedImg:"Selected-Home")
        settingNavForEachController(bookVC, transparent: true, navTitle: "Sach", tabbarTitle: "Book", image:"Book", selectedImg:"Selected-Book")
        
    }
    func settingNavForEachController(viewController:BaseViewController, transparent : Bool , navTitle : String, tabbarTitle : String , image : String , selectedImg : String){
        
        viewController.navigationItem.title = navTitle
        viewController.tabBarItem = UITabBarItem(
             title: tabbarTitle
            ,image: UIImage(named: image)?.imageWithRenderingMode(.AlwaysOriginal)
            ,selectedImage: UIImage(named: selectedImg)?.imageWithRenderingMode(.AlwaysOriginal))
        
        
        viewController.tranparent = transparent
    }
}
