import Foundation

// ---- Leccion 7: 53 Clases, Instacias y Uso de Objetos ----

// Una clase es un elemento de la programación orientada...
// a objetos que actúa como una plantilla y va a definir...
// las características y comportamientos de una entidad.
// La clase va a ser como un molde a partir del cual...
// vamos a poder definir entidades.

class automovil {
    var  color = "neutro" 
    var numeroLlantas = 4
    var precio = 0
    
    func arrancar() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return true
    }
    
    func acelerar() -> Bool {
        return true
    }
}


var miObjetoCoche = automovil()

// ¿Como podemos usar su propiedades y metodos?
// Pues con la sintaxis de punto

miObjetoCoche.precio = 15000

print(miObjetoCoche.precio)
