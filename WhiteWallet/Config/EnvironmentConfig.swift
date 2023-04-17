//
//  EnvironmentConfig.swift
//  WhiteWallet
//
//  Created by Ruben Dario Garcia Astudillo on 17/04/23.
//

import Foundation

enum BaseConfig: String {
    case LOCAL = "local"
    case DEV = "dev"
    case QA = "qa"
    case UAT = "uat"
    case PROD = "prod"
}

class EnvironmentConfig {
    
    static let shared = EnvironmentConfig()
    
    var config = "none"
    
    func currentSetup() {
        #if LOCAL
        self.config = BaseConfig.LOCAL.rawValue
        #elseif DEV
        self.config = BaseConfig.DEV.rawValue
        #elseif QA
        self.config = BaseConfig.QA.rawValue
        #elseif UAT
        self.config = BaseConfig.UAT.rawValue
        #elseif PROD
        self.config = BaseConfig.PROD.rawValue
        #endif
        
        print("Running target: \(TargetConfig.getSelectedBankID()) in environment: \(self.config)")
    }
}

struct TargetConfig {
    static func getSelectedBankID() -> String {
        let bundleID = Bundle.main.bundleIdentifier ?? ""
        
        switch bundleID {
        case "com.ruben.WhiteWallet":
            return "White Wallet"
        case "com.ruben.A-Bank":
            return "A-Bank"
        case "com.ruben.B-Bank":
            return "B-Bank"
        case "com.ruben.C-Bank":
            return "C-Bank"
        default:
            return ""
        }
    }
}
