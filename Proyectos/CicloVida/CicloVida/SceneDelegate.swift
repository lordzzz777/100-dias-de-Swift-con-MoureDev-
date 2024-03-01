//
//  SceneDelegate.swift
//  CicloVida
//
//  Created by Lordzzz on 29/2/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        // Utilice este método para configurar y adjuntar opcionalmente la `ventana` de UIWindow a la `escena` de UIWindowScene proporcionada.
        // Si se utiliza un guión gráfico, la propiedad `ventana` se inicializará automáticamente y se adjuntará a la escena.
        // Este delegado no implica que la escena o sesión de conexión sea nueva (consulte `application:configurationForConnectingSceneSession` en su lugar).
        
        guard let _ = (scene as? UIWindowScene) else { return }
        print("\(#function)")
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
        
        // Se llama cuando el sistema libera la escena.
        // Esto ocurre poco después de que la escena pasa a segundo plano o cuando se descarta su sesión.
        // Libera cualquier recurso asociado con esta escena que pueda recrearse la próxima vez que se conecte la escena.
        // La escena puede volver a conectarse más tarde, ya que su sesión no fue necesariamente descartada (consulte `application:didDiscardSceneSessions` en su lugar).
        
        print("\(#function)")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
        print("\(#function)")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
        
        // Se llama cuando la escena ha pasado de un estado inactivo a un estado activo.
        // Utilice este método para reiniciar cualquier tarea que se haya detenido (o que aún no se haya iniciado) cuando la escena estaba inactiva.
        
        print("\(#function)")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
        
        // Se llama cuando la escena pasa del fondo al primer plano.
        // Utilice este método para deshacer los cambios realizados al ingresar al fondo.
        
        print("\(#function)")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        
        // Se llama cuando la escena pasa del primer plano al fondo.
        // Utilice este método para guardar datos, liberar recursos compartidos y almacenar suficiente información de estado específica de la escena
        // para restaurar la escena a su estado actual.
        
        print("\(#function)")
    }


}

