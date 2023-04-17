//
//  AppDelegate.swift
//  WhiteWallet
//
//  Created by Ruben Dario Garcia Astudillo on 17/04/23.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        EnvironmentConfig.shared.currentSetup()
                    
        return true
    }
}
