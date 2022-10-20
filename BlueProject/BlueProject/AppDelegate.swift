//
//  AppDelegate.swift
//  BlueProject
//
//  Created by June on 2022/10/18.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TabBarController() // 앱이 실행되면 가장먼저 커지는 vc
        window?.makeKeyAndVisible()
        
        return true
    }
}

