import Foundation



// ---- Leccion 8: 65 Extensiones ----


// Nos sirve para agregar nueva funcionalidad a una...
// clase, estrutura, enumeracion o a un protocolo...
// le podemos añadir caracteristica de tipo de dato...
// La caracteristicas que podemos añadir es la...
// agregacion de propiedad distancia, definicion de funciones,
// nuevos inicializadores, subinices, tipos de datos anidados,
// o hacer que cualquier tipo se adapte a un protocolo,
// ejemplo:

let metros: Double = 5.0

func combersor(metros: Double) -> Double {
    return metros / 1000
}

print(combersor(metros: metros))

extension Double {
    
    var km: Double {
      return self / 1000
    }
    
    var m: Double {
        return self
    }
    
    var cm: Double {
        return self * 100
    }
}

print(metros.m)




// ---- 66 Protocolos ----


// sirve para definir un modelo de metodos y otros requisitos
// Pra que una clase una extrupura o una enumeracion se adapten a ellos
// dicho de otro modo, va a obligar a que adopte una series de propiedades y funciones


protocol PersonProtocol{
    var name: String {get set}
    var age: Int {get set}
}

struct Programmer: PersonProtocol{
    var name: String
    var age: Int
    var lenguage: String
}

struct Teacher: PersonProtocol {
    var name: String
    var age: Int
    var Subject: String
}

// Podemos ver como obligamos aun tipo de extrutura
// cumpla un protocolo, y que en este caso es implementar
// el nombre y la edad

// para implementar en nuestro protocolo es tan...
// sencillo como escribir en nuestro protocolo
// la funcion, y en los dos estructuras,...
// Xcode nos pedira que tambien las implementemos

protocol PersonProtocol2{
    var name: String {get set}
    var age: Int {get set}
    
    func fullName() -> String
}

struct Programmer2: PersonProtocol2{
    var name: String
    var age: Int
    var lenguage: String
    
    func fullName() -> String {
        return "El nombre es \(name) y la edad \(age) el lenguaje favorito es \(lenguage)"
    }
}

struct Teacher2: PersonProtocol2 {
    var name: String
    var age: Int
    var subject: String
    
    func fullName() -> String {
        return "El nombre es \(name) y la edad \(age) imparte la asignatura de \(subject)"
    }
}

let myProgrammer = Programmer2(name: "Manolo", age: 37, lenguage: "Swift")
let myTeacher = Teacher2(name: "Jaime", age: 30, subject: "Ciencias")

print(myTeacher.fullName())
print(myProgrammer.fullName())


// ---- 67 Protocolos delegado ----

// es el mecanismo que nos va a permitir...
// en comunicar doe clases ensentido inverso

class FirstClass: SecondClassProtocol{
    func call()  {
        print("Estoy de vuelta")
    }
    
    func callSecond() {
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }
}

protocol SecondClassProtocol {
    func call()
}

class SecondClass{
    var delegate: SecondClassProtocol?
    
    func callFirst() {
        sleep(5)
        delegate?.call()
    }
}

let firstClass = FirstClass()
firstClass.callSecond()




// ---- 68 Genericos ----

// Codigo generico lo que nos va a permitir
// Escribir funciones y tipos flexibles
// que son reutilizables y que van a funcinar con
// diferentes tipos, que se adapte a unos requisitos
// de esta manera podemos astraer nuestro codigo y evitar
// la duplicacion de operaciones


// Sin genericos
// la palabra reserbada "inout" va a designar los parametros
// que van a entrar y salir, sin que nosotros lo retrornemos
func swapTwoInts(a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstInt = 5
var mySecondInt = 10

print("El primer valor es de \(myFirstInt) y el segundo es de \(mySecondInt)")

swapTwoInts(a: &myFirstInt, b: &mySecondInt)

print("El primer valor es de \(myFirstInt) y el segundo es de \(mySecondInt)")


// Con genericos

func swapTwoGenerics<T>(a: inout T, b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

/*
var myFirstGet = 5
var mySecondGet = 10
*/
// En vez de colocar enteros colocamos de tipo cadena de texto
// veremos que segura funcionando, dado que la funcion detenta que
// el tipo de dato es generico

var myFirstGet = "Hola "
var mySecondGet = "Mundo"
print("El primer valor es de \(myFirstGet) y el segundo es de \(mySecondGet)")

swapTwoGenerics(a: &myFirstGet, b: &mySecondGet)

print("El primer valor es de \(myFirstGet) y el segundo es de \(mySecondGet)")


