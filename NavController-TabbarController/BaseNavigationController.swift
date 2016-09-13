//
//  BaseNavigationController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        let appearance = UINavigationBar.appearance()
        
        
        navigationBar.tintColor = UIColor.whiteColor()
        appearance.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        let font = UIFont (name: "7LED", size: 30)
        if let font = font{
        appearance.titleTextAttributes = [NSFontAttributeName: font]
        }
    }
}

