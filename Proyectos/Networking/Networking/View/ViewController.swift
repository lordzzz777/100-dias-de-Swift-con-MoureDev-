//
//  ViewController.swift
//  Networking
//
//  Created by Esteban Perez Castillejo on 25/3/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var getUser: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getUserAction(_ sender: Any) {
        NetworkingProvider.shared.getUser(id: 6805326)
    }
    
}

