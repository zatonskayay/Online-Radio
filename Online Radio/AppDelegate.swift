//
//  AppDelegate.swift
//  Online Radio
//
//  Created by Yulia Zatonskaya on 14.04.2020.
//  Copyright © 2020 Zatonskayay. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rootViewController = storyboard.instantiateInitialViewController()!
        window?.rootViewController = rootViewController
        
        return true
    }

}

