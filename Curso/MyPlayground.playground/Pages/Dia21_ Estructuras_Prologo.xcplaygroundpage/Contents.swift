import Foundation


// ---- Estructuras en Swift ----


// La estructura en Swift se refiere...
// a la manera en que organizas y diseñas tu código

// ***--- Clases y Estructuras: ---***

// Puedes crear clases y estructuras para...
// definir tus propios tipos de datos.

// Las clases son tipos de referencia,...
// lo que significa que cuando asignas...
// una instancia de una clase a otra variable,...
// ambas variables apuntan...
// a la misma instancia en memoria.

// Las estructuras son tipos de valor,...
// y cuando asignas una estructura...
// a otra variable, se realiza una...
// copia completa del valor.

 class MyClass {
// código de la clase
}

struct MyStruct {
// código de la estructura
}

// Propiedades:

// Puedes agregar propiedades a tus...
// clases y estructuras para almacenar datos.

// Las propiedades pueden ser variables (var) o constantes (let).

class Person {
    var name: String
    let age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// Métodos:

// Los métodos son funciones que...
// pertenecen a una clase o estructura.

class Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}

// Inicializadores:

// Los inicializadores son métodos especiales...
// que se llaman para crear una instancia...
// de una clase o estructura.

let person = Person(name: "John", age: 30)

// Herencia:

// Puedes crear una clase que herede de otra...
// para compartir características.

class Student: Person {
    var studentID: String

    init(name: String, age: Int, studentID: String) {
        self.studentID = studentID
        super.init(name: name, age: age)
    }
}

// Protocolos:

// Los protocolos definen un conjunto de métodos,...
// propiedades u otros requisitos...
// que un tipo debe implementar.

protocol Printable {
    func printDetails()
}

class Document: Printable {
    func printDetails() {
        // Implementación del método del protocolo
    }
}

// Extensiones:

// Puedes extender la funcionalidad...
// de una clase, estructura,...
// enumeración o protocolo existente.

extension Int {
    var squared: Int {
        return self * self
    }
}

let x = 5
let squaredX = x.squared // 25


