//
//  WhiteWalletApp.swift
//  WhiteWallet
//
//  Created by Ruben Dario Garcia Astudillo on 17/04/23.
//

import SwiftUI

@main
struct WhiteWalletApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
