//
//  AppDelegate.swift
//  FirebaseTutorial
//
//  Created by Esteban Perez Castillejo on 4/4/24.
//

import UIKit
import FirebaseCore
import GoogleSignIn


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ app: UIApplication,open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
      return GIDSignIn.sharedInstance.handle(url)
    }

    private func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) async -> Bool {
        
        
        // Fire base
        FirebaseApp.configure()
        
        // Create Google Sign In configuration object.
        guard let clientID = FirebaseApp.app()?.options.clientID else { fatalError("No client  ID found in Firebase configuration")}
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let window = windowScene.windows.first,
              let rootViewController = window.rootViewController else {
            printContent("there is not root view controller")
            return false
        }
        // Start the sign in flow!
        do{
            let userAutentication = try await GIDSignIn.sharedInstance.signIn(withPresenting: rootViewController)
            let user = userAutentication.user
            return true
        }catch {
            print(error.localizedDescription)
            return false
        }
  
      //  return true
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

