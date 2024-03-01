//
//  AppDelegate.swift
//  CicloVida
//
//  Created by Lordzzz on 29/2/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
// (Ciclo de vida de la app)-(Ciclo de vida del ViewController)
// una App puede tener  -> mas de una es escena -> nViewControllers

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // Anular el punto para la personalización después del inicio de la aplicación.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        
        // Se llama cuando se crea una nueva sesión de escena.
        // Utilice este método para seleccionar una configuración con la que crear la nueva escena.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        
        // Se llama cuando el usuario descarta una sesión de escena.
        // Si se descartó alguna sesión mientras la aplicación no se estaba ejecutando, se llamará poco después de la aplicación: didFinishLaunchingWithOptions.
        // Utilice este método para liberar cualquier recurso que sea específico de las escenas descartadas, ya que no volverán.
    }


}

