//
//  AppDelegate.swift
//  TesseractKZ
//
//  Created by Zhenis Mutan on 3/31/20.
//  Copyright © 2020 Zhenis Mutan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: TestViewController())
        window?.rootViewController?.view.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()
        
        return true
    }


}

