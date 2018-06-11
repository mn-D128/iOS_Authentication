//
//  AppDelegate.swift
//  iOS_Authentication
//
//  Created by mn(D128) on 2018/06/11.
//  Copyright © 2018年 D128. All rights reserved.
//

import UIKit
import Firebase
import TwitterKit
import FirebaseUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Use Firebase library to configure APIs
        FirebaseApp.configure()
        
        TWTRTwitter.sharedInstance().start(withConsumerKey:"aIHbrzISGw1xmd4Fk8FfTF6N5",
                                           consumerSecret:"")
        
        let authUI = FUIAuth.defaultAuthUI()
        let providers: [FUIAuthProvider] = [
            FUITwitterAuth()
        ]
        authUI?.providers = providers
        
        // Override point for customization after application launch.
        return true
    }

    func application(_ app: UIApplication, open url: URL,
                     options: [UIApplicationOpenURLOptionsKey : Any]) -> Bool {
        let sourceApplication = options[UIApplicationOpenURLOptionsKey.sourceApplication] as! String?
        if FUIAuth.defaultAuthUI()?.handleOpen(url, sourceApplication: sourceApplication) ?? false {
            return true
        }
        // other URL handling goes here.
        return false
    }

}
