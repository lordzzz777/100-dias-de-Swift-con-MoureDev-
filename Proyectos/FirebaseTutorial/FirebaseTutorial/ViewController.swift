//
//  ViewController.swift
//  FirebaseTutorial
//
//  Created by Esteban Perez Castillejo on 4/4/24.
//

import UIKit
import FirebaseAnalytics
import FirebaseAuth

class ViewController: UIViewController {
    @IBOutlet var emailTextFile: UITextField!
    @IBOutlet var passwordTextFile: UITextField!
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Autenticación"
        // Analytics Event
        Analytics.logEvent("InitScreen", parameters: ["massage": "Integracion de Firebase Completa"])
    }

    @IBAction func signUpButtonAction(_ sender: Any) {
        if let email = emailTextFile.text, let password = passwordTextFile.text {
            Auth.auth().createUser(withEmail: email, password: password){(result, error) in
                if let result = result, error == nil {
                    self.navigationController?.pushViewController(HomeViewController(email: result.user.email!, provider: .basic), animated: true)
                }else{
                    let alerController = UIAlertController(title: "Error", message: "Sea producido un error al registras el usuario", preferredStyle: .alert)
                    alerController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    self.present(alerController, animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func logInButtonAction(_ sender: Any) {
        
        if let email = emailTextFile.text, let password = passwordTextFile.text {
            Auth.auth().signIn(withEmail: email, password: password){(result, error) in
                if let result = result, error == nil {
                    self.navigationController?.pushViewController(HomeViewController(email: result.user.email!, provider: .basic), animated: true)
                }else{
                    let alerController = UIAlertController(title: "Error", message: "Sea producido un error al iniciar sesión", preferredStyle: .alert)
                    alerController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    self.present(alerController, animated: true, completion: nil)
                }
            }
        }
    }
    
}

