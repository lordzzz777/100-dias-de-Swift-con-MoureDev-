//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Esteban Perez Castillejo on 19/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var Label: UILabel!
    @IBOutlet var isGet: UIButton!
    @IBOutlet var isPut: UIButton!
    @IBOutlet var isDelete: UIButton!
    
    private let kMyKey = "MY_KEY"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Label.text = NSLocalizedString("Hola", comment: "")
    }

    // MARK: - UserDefaults
    
    // Recuperar Preferencias
    @IBAction func actionGet(_ sender: Any) {
        
        
        if let value = UserDefaults.standard.string(forKey: kMyKey) {
            Label.text = "\(value)"
            showAlert(value)
        }else {
            Label.text = "no tienes valor guardado"
            showAlert("No hay valor para esta clave")
        }
    }
    
    // Guardar Preferencias
    @IBAction func actionPut(_ sender: Any) {
        Label.text = "As pulsado en PUT"
        
        UserDefaults.standard.set("Esta funcionando ... ", forKey: kMyKey)
        UserDefaults.standard.synchronize()
        showAlert("Hemos Guardado un Valor")
    }
    
    // Eliminar Preferencias
    @IBAction func actionDelete(_ sender: Any) {
        Label.text = "As pulsado en DELETE"
        UserDefaults.standard.removeObject(forKey: kMyKey)
        UserDefaults.standard.synchronize()
        showAlert("El valor se ha borrado con Exito")
    }
    
    // Funcion dond
    private func showAlert(_ message: String){
        let alert = UIAlertController(title: "My UserDefaul", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}

