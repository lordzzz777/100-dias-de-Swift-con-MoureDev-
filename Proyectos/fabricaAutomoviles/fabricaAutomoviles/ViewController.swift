//
//  ViewController.swift
//  fabricaAutomoviles
//
//  Created by lordzzz on 24/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    var typeAU: Int?
    
    @IBOutlet weak var myButtonSencillo: UIButton!
    @IBOutlet weak var myButtonElectrico: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func crearSencillo(_ sender: Any) {
        typeAU = 0
        performSegue(withIdentifier: "nView2", sender: self)
    }
    
    @IBAction func crearElectrico(_ sender: Any) {
        typeAU = 1
        performSegue(withIdentifier: "nView2", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destino = segue.destination as? ViewController2 {
            destino.typeAU = self.typeAU
        }
    }
    
}

