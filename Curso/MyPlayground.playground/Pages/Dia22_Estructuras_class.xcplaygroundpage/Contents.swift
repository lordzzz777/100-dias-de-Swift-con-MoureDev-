import Foundation
import UIKit

// ---- Las class ----

// las clases son uno de los tipos de datos...
// fundamentales y se utilizan para definir...
// objetos y tipos de datos más complejos.
// Aquí hay una descripción general de las...
// estructuras de tipo "class" en Swift:

// Definición de una Clase:
// Para definir una clase en Swift,...
// se utiliza la palabra clave class.
// Aquí tienes un ejemplo...
// básico de cómo se define una clase:

class MiClase {
    // Propiedades y métodos de la clase
}

// Propiedades:
// Las clases pueden tener propiedades...
// para almacenar valores.
// Estas propiedades pueden ser variables...
// (var) o constantes (let).
// Aquí hay un ejemplo con una propiedad:

class Persona {
    var nombre: String = "John Doe"
}

// Métodos:
// Los métodos son funciones asociadas a una clase.
// Pueden ser utilizados para realizar operaciones...
// específicas en las instancias de la clase.
// Aquí hay un ejemplo con un método:

class Coche {
    var marca: String = "Toyota"
    
    func arrancar() {
        print("El coche \(marca) está arrancando.")
    }
}

// Inicializadores:
// Los inicializadores son métodos especiales...
// que se llaman al crear una nueva instancia de una clase.
// Puedes definir tu propio inicializador para...
// personalizar el proceso de inicialización.
// Aquí hay un ejemplo:

class Libro {
    var titulo: String
    var autor: String
    
    init(titulo: String, autor: String) {
        self.titulo = titulo
        self.autor = autor
    }
}

// Herencia:
// Swift permite la herencia entre clases.
// Una clase puede heredar propiedades...
// y métodos de otra clase. Aquí hay un ejemplo:

class Animal {
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func hacerSonido() {
        print("Haciendo un sonido genérico.")
    }
}

class Perro: Animal {
    override func hacerSonido() {
        print("¡Guau, guau!")
    }
}

// Propiedades Calculadas:
// Puedes definir propiedades que no almacenan...
// un valor directamente, sino que proporcionan...
// un getter y un setter para calcular su valor.
// Aquí hay un ejemplo:

class Cuadrado {
    var lado: Double
    
    init(lado: Double) {
        self.lado = lado
    }
    
    var area: Double {
        return lado * lado
    }
}

// Referencias Fuertes y Débiles:
// En Swift, las instancias de clases...
// se manejan mediante referencias.
// Puedes usar referencias fuertes...
// o débiles para gestionar la memoria...
// y evitar ciclos de retención fuerte...
// (strong reference cycles).
// Puedes usar la palabra clave weak para...
// declarar referencias débiles.

class Persona {
    var nombre: String
    weak var mejorAmigo: Persona?
    
    init(nombre: String) {
        self.nombre = nombre
    }
}

// Estas son algunas de las características...
// clave de las clases en Swift.
// Pueden usarse para modelar objetos más...
// complejos y son fundamentales para la...
// programación orientada a objetos en este lenguaje.


// ---- Tipos de Clases en Swift: ----

// Las clases pueden clasificarse en...
// diferentes tipos según su propósito y uso.

// Clases de Modelo:

// Estas clases suelen representar los datos...
// fundamentales de la aplicación.

// Pueden incluir propiedades y métodos...
// para describir y manipular esos datos.

// Ejemplo: Una clase Usuario que almacena...
// información sobre los usuarios de una aplicación.

class Usuario {
    var nombre: String
    var edad: Int

    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
}

// Clases de Controlador:
// Estas clases suelen ser responsables de coordinar...
// la lógica de la aplicación y actuar como intermediarios...
// entre las vistas y los modelos.

// Pueden manejar eventos, gestionar la navegación...
// y realizar otras tareas de control.

// Ejemplo: Un controlador de vista que gestiona...
// la lógica detrás de una pantalla de inicio de sesión.

class InicioSesionViewController: UIViewController {
    // Lógica de inicio de sesión
}


// Clases de Vista:
// Estas clases representan las interfaces de usuario...
// y son responsables de la presentación visual.

// Pueden contener elementos como botones, etiquetas, etc.

// Ejemplo: Una clase que define la vista...
// de un elemento de lista en una aplicación.

class ElementoListaView: UIView {
    // Configuración visual del elemento de lista
}


// Clases de Servicio:
// Estas clases proporcionan servicios específicos,...
// como la gestión de la red, la persistencia de datos, etc.

// Se utilizan para encapsular la funcionalidad que no está...
// directamente relacionada con la interfaz...
// de usuario o la lógica del modelo.

// Ejemplo: Una clase de servicio para realizar solicitudes HTTP.

class ServicioRed {
    // Lógica para realizar solicitudes HTTP
}


// Clases Utilitarias:
// Estas clases contienen métodos y funciones útiles...
// que pueden ser reutilizados en diferentes partes de la aplicación.

// Proporcionan funcionalidad común que no está...
// específicamente relacionada con un área particular de la aplicación.

// Ejemplo: Una clase utilitaria para formatear fechas.

class UtilidadesFecha {
    static func formatearFecha(_ fecha: Date) -> String {
        // Lógica de formateo de fecha
    }
}


// Clases de Singleton:
// Estas clases se diseñan para tener una...
// única instancia en toda la aplicación.

// A menudo se utilizan para gestionar recursos globales
// o para proporcionar puntos de acceso únicos a ciertos servicios.

// Ejemplo: Un singleton que gestiona la configuración de la aplicación.

class ConfiguracionApp {
    static let instanciaCompartida = ConfiguracionApp()

    private init() {
        // Inicialización del singleton
    }
}

