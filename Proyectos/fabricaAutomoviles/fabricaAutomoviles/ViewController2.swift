//
//  ViewController2.swift
//  fabricaAutomoviles
//
//  Created by lordzzz on 25/2/24.
//

import UIKit

class ViewController2: UIViewController {

    // Outlet elementos ...
    @IBOutlet weak var myInfoText: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    // Outlet botones ...
    @IBOutlet weak var myButtonInfo: UIButton!
    @IBOutlet weak var myButtonEncender: UIButton!
    @IBOutlet weak var myButtonAC: UIButton!
    @IBOutlet weak var myButtonApagar: UIButton!
    
    var typeAU: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch typeAU! {
        case 0:
            print("Voy a crear un objeto automovil sencillo")
        case 1:
            print("Voy a crear un objeto automovil electrico")
        default:
            print("error")
        }
        
    }
    // Funcion de boton ...
    @IBAction func mostrarInfo(_ sender: Any) {
    }
    
    @IBAction func enceder(_ sender: Any) {
    }
    
    @IBAction func acelerar(_ sender: Any) {
    }
    
    @IBAction func apagarAU(_ sender: Any) {
    }
    
}
