//
//  YourBookController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class YourBookController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        let cameraButtonItem = UIBarButtonItem(barButtonSystemItem: .Camera, target: self, action: #selector(takeAPicture(_:)))
        
        //navigationItem.leftBarButtonItem = cameraButtonItem
        
        let buttonRight = UIBarButtonItem(image: UIImage(named: "EMAIL"), style: .Plain, target: self, action: #selector(SendEmail))
        
        navigationItem.setRightBarButtonItems([cameraButtonItem,buttonRight],animated: true)

    }

    func takeAPicture(sender: AnyObject){
        print("take a picture")
    
    }
    
    func SendEmail(sender: AnyObject){
    
        print("sending email")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
