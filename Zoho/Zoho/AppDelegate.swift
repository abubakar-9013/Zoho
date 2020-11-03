//
//  AppDelegate.swift
//  Zoho
//
//  Created by Abu Bakar on 10/29/20.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        presentViewController()
        
        return true
    }

    
    func presentViewController() {
    
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        //let viewController = IntroScreenViewController()
        //let viewController = HomeViewController()
        //let navController = UINavigationController(rootViewController: viewController)
        let tabbarcontroller = TabViewController()
        window?.rootViewController = tabbarcontroller
        
        
    }

    

}

