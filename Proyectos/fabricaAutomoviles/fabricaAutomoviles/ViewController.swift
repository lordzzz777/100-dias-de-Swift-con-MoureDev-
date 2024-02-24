//
//  ViewController.swift
//  fabricaAutomoviles
//
//  Created by lordzzz on 24/2/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var automovil = Automovil()
        print("El boleano que representa el automob es: \(automovil.encendido())")
    }


}

