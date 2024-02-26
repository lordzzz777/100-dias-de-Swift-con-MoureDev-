//
//  ViewController.swift
//  fabricaAutomoviles
//
//  Created by Juan Villalvazo.
//  Copyright ©Juan Villalvazo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tipoAutomovil:Int?
    var x = 10
    override func viewDidLoad() {
        super.viewDidLoad()

    }
 
    @IBAction func crearAutomovil(_ sender: Any) {
    
      tipoAutomovil = 0
    performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }
    
    @IBAction func crearAutomovilMazda(_ sender: Any) {
    
    tipoAutomovil = 1
    performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
        if let destino = segue.destination as?
            
            ViewControllerSegundaPantalla{
            destino.tipoAutomovil = self.tipoAutomovil
          
        }
        
        // Pass the selected object to the new view controller.
    }
    
    
}

