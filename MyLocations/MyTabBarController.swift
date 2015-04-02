//
//  MyTabBarController.swift
//  MyLocations
//
//  Created by 刘迪 on 4/2/15.
//  Copyright (c) 2015 roy. All rights reserved.
//

import UIKit


class MyTabBarController: UITabBarController {
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func childViewControllerForStatusBarStyle() -> UIViewController? {
        return nil
    }
}
