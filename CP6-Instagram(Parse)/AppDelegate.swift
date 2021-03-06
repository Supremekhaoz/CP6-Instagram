//
//  AppDelegate.swift
//  CP6-Instagram(Parse)
//
//  Created by Luis Liz on 2/22/16.
//  Copyright © 2016 Luis Liz. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var storyboard = UIStoryboard(name: "Main", bundle: nil)

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
            
            // Initialize Parse
            // Set applicationId and server based on the values in the Heroku settings.
            // clientKey is not used on Parse open source unless explicitly configured
            Parse.initializeWithConfiguration(
                ParseClientConfiguration(block: { (configuration:ParseMutableClientConfiguration) -> Void in
                    configuration.applicationId = "Instagram"
                    configuration.clientKey = "asldj;alskjieo8u0390j92rj3f3pop9f3"
                    configuration.server = "https://cp6-instagram.herokuapp.com/parse"
                })
            )
        if PFUser.currentUser() != nil {
            print("a user was found")             
            let vc = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
            window?.rootViewController = vc
        }
        return true
    }
    
    func UserDidLogout() {
        print("logout")
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

