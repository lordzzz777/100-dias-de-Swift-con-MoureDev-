//
//  UIButtonExtension.swift
//  iOS-Calculator
//
//  Created by Esteban Perez Castillejo on 13/3/24.
//

import UIKit

extension UIButton {
    
    // borde redondo
    func round(){
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    // Brillar
    func shine(){
        UIView.animate(withDuration: 0.1, animations: {
            self.alpha = 0.5
        }){ (completion) in
            UIView.animate(withDuration: 0.1, animations: {
                self.alpha = 1
            })
        }
    }
}
