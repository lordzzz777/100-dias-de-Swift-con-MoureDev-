//
//  ViewController.swift
//  FirebaseTutorial
//
//  Created by Esteban Perez Castillejo on 4/4/24.
//

import UIKit
import FirebaseAnalytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Analytics Event
        Analytics.logEvent("InitScreen", parameters: ["massage": "Integracion de Firebase Completa"])
    }


}

