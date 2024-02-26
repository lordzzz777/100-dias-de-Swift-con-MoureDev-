//
//  File.swift
//  fabricaAutomoviles
//
//  Created by Juan Villalvazo.
//  Copyright © Juan Villalvazo. All rights reserved.
//

import Foundation


class AutomovilElectrico: Automovil {
    
    var porcetajeBateria = 100
    
    func cargarBateria() -> String {
        
        porcetajeBateria = 100
        return "carga exisa"
    }
    
    
}
