//
//  ModifyConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Esteban Perez Castillejo on 3/3/24.
//

import UIKit

class ModifyConstraintsViewController: UIViewController {
    @IBOutlet var heinhtConstraiint: NSLayoutConstraint!
    @IBOutlet var topConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heinhtConstraiint.constant = 300
        topConstraint.constant = 64
    }
    
}
