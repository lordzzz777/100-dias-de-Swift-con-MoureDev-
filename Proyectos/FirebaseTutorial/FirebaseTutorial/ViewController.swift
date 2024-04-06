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
    
    @IBOutlet var authStackView: UIStackView!
    @IBOutlet var emailTextFile: UITextField!
    @IBOutlet var passwordTextFile: UITextField!
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var googleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Autenticación"
        // Analytics Event
        Analytics.logEvent("InitScreen", parameters: ["massage": "Integracion de Firebase Completa"])
        
        // Comprobar la sesión del usuario autenticado
        let defaults = UserDefaults.standard
        if let email = defaults.value(forKey: "email") as? String,
        let provider = defaults.value(forKey: "provider") as? String {
          //  authStackView.isHidden = true
            navigationController?.pushViewController(HomeViewController(email: email, provider: ProviderType.init(rawValue: provider)!), animated: false)
        }
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
    

    @IBAction func googleButtonAction(_ sender: Any) {
    }
    
    
}

