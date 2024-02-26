//
//  File.swift
//  fabricaAutomoviles
//

import Foundation


class AutomovilElectrico: Automovil {
    
    var porcetajeBateria = 100
    
    func cargarBateria() -> String {
        
        porcetajeBateria = 100
        return "carga exisa"
    }
    
    
}
