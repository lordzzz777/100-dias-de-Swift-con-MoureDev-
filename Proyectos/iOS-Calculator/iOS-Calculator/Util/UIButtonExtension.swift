//
//  UIButtonExtension.swift
//  iOS-Calculator
//
//  Created by Esteban Perez Castillejo on 13/3/24.
//

import UIKit

private let orange = UIColor(red: 254/255, green: 148/255, blue: 0/255, alpha: 1)

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
    
    // Apariencia al seleccionar el boton de operaciones
    func selectOperaton(_ selected: Bool) {
        backgroundColor = selected ? .white : orange
        setTitleColor(selected ? orange : .white, for: .normal)
    }
}
