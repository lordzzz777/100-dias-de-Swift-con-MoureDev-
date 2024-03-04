//
//  CreateConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Esteban Perez Castillejo on 4/3/24.
//

import UIKit

class CreateConstraintsViewController: UIViewController {
    @IBOutlet weak var yellowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// ** Constraints de tamaño  ->  Programatica mente
        yellowView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        yellowView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        /// ** Constraints de posiciom  ->  Programatica mente
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addConstraint(NSLayoutConstraint(item: yellowView!, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1000, constant: 16))
        yellowView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
    }
    

}
