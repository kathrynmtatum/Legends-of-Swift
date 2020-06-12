//
//  AppDelegate.swift
//  Legends of Swift
//
//  Created by Kathryn Tatum on 5/2/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

//Accessing API
    //Copy from Fact
    //Create a struct called Result (within the class) with what you’re trying to get inside: make the struct CODABLE
    //In the do method, just want to make sure you’re decoding Result and putting it in variable result, getting result.value
//Reading out the API
    //>var fact = Fact() accessing class Fact: at the top under outlets
    //Add all the stuff in the getFactPressed action
//Replacing the name with the one entered
    //replaceName function in the view controller
    //Call self.replaceName in getFactPressed button
//Change for gender
    //Create updateGender function w all info inside
    //Call it down in getFactPressed (the if statement)

