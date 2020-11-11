//
//  AppDelegate.swift
//  Zoho
//
//  Created by Abu Bakar on 10/29/20.
//

import UIKit
import Firebase
import GoogleSignIn

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
 
    

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //Initialize Signin
        GIDSignIn.sharedInstance().clientID = "396312363146-ba2sg8nmdbgoseg84fj3lgt8lgh8bina.apps.googleusercontent.com"
        GIDSignIn.sharedInstance()?.delegate = self
        
        if ((GIDSignIn.sharedInstance()?.hasPreviousSignIn()) != nil) {
            
            presentNexxtVC()
        }
        else {
            presentViewController()
            
        }
      
        
        
        
        FirebaseApp.configure()
        
        
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return GIDSignIn.sharedInstance().handle(url)
    }

    
    func presentViewController() {
    
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let viewController = IntroScreenViewController()
        //let viewController = HomeViewController()
        //let navController = UINavigationController(rootViewController: viewController)
      //  let tabbarcontroller = TabViewController()
        window?.rootViewController = viewController
        
        
    }
    
    func presentNexxtVC() {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
       //let viewController = Home_Health_ViewController()
        //let viewController = HomeViewController()
        //let viewController = Home_Health_ViewController()
       // let navController = UINavigationController(rootViewController: viewController)
        let tabbarcontroller = TabViewController()
        window?.rootViewController = tabbarcontroller

    }

    

}

extension AppDelegate: GIDSignInDelegate {
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        
        if error != nil {
            // ...
            return
        }

        guard let authentication = user.authentication else { return }
        let name = user.profile.name
        

        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,accessToken: authentication.accessToken)
        Auth.auth().signIn(with: credential) { (user, error) in
            if user == nil {
                // ...
                return
            } else {
                
                print("Name is \(String(describing: name))")
                self.presentNexxtVC()
                
                

            }
        }
    }
    
    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
        
        // Perform any operations when the user disconnects from app here.

    }
}

