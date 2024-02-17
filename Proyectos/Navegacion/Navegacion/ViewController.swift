//
//  ViewController.swift
//  Navegacion
//
//  Created by Esteban Perez Castillejo on 15/2/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButtonBlack(_ sender: Any) {
        print("I´m Button Black")
        performSegue(withIdentifier: "VCBlack", sender: self)
    }
    
    
    @IBAction func myButtonPink(_ sender: Any) {
        print("I´m Button Pink")
        performSegue(withIdentifier: "VCPink", sender: self)
    }
    
    
    @IBAction func myButtonYelow(_ sender: Any) {
        print("I´m Button Yellow")
        performSegue(withIdentifier: "VCYellow", sender: self)
    }
    
    override func  prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VCBlack" {
            if let destino = segue.destination as? ViewControllerBlack{
                destino.titulo = "Pantalla negra"
            }
        }
        
        if segue.identifier == "VCPink" {
            if let destino = segue.destination as? ViewControllerPick{
                destino.titulo = "Pantalla Rosa"
            }
        }
        
        if segue.identifier == "VCYellow" {
            if let destino = segue.destination as? ViewControllerYellow{
                destino.titulo = "Pantalla Amarillo"
            }
        }
    }
    
}

