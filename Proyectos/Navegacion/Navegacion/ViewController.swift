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
        print("I´m Button Yelow")
        performSegue(withIdentifier: "VCYelow", sender: self)
    }
    
}

