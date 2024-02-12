//: [Previous](@previous)

import Foundation

// ---- Las structs: ----

// las "structs" (abreviatura de estructuras) son un...
// tipo de dato que permite agrupar valores...
// relacionados bajo un solo nombre.
// A diferencia de las clases, las estructuras...
// son tipos de datos valor, lo que significa que...
// se pasan por valor en lugar de por referencia.
// Aquí tienes algunas características y conceptos...
// clave sobre las "structs" en Swift:

// Definición de una Struct:
// Puedes definir una struct usando la palabra clave struct. Por ejemplo:

struct Point {
    var x: Int
    var y: Int
}

// Propiedades:
// Las structs pueden contener propiedades para almacenar valores.
// En el ejemplo anterior, x e y son propiedades de la struct Point.


// Inicialización:
// Puedes inicializar una struct usando su...
// inicializador automáticamente generado.
// Por ejemplo:

var origin = Point(x: 0, y: 0)

// Swift proporciona automáticamente un inicializador...
// que acepta valores para todas las propiedades de la struct.

// Métodos:
// Las structs pueden tener métodos que te permiten...
// agregar funcionalidad específica a la struct. 
// Por ejemplo:

struct Point {
    var x: Int
    var y: Int

    func distance(to otherPoint: Point) -> Double {
        let deltaX = Double(x - otherPoint.x)
        let deltaY = Double(y - otherPoint.y)
        return sqrt(deltaX * deltaX + deltaY * deltaY)
    }
}

// Mutabilidad:
// Por defecto, las propiedades de una struct son inmutables.
// Si deseas que una struct sea mutable, debes marcarla...
// con la palabra clave mutating en los métodos...
// que modifican las propiedades.

struct MutablePoint {
    var x: Int
    var y: Int

    mutating func moveBy(x deltaX: Int, y deltaY: Int) {
        x += deltaX
        y += deltaY
    }
}


// Comparación:
// Las structs en Swift obtienen automáticamente...
// métodos de comparación, como == e !=, basados en sus propiedades.

// Valores Copiados:
// A diferencia de las clases, las structs se pasan por valor.
// Esto significa que cuando asignas una struct a una nueva...
// variable o la pasas como argumento a una función,...
// se realiza una copia completa de la estructura.

var pointA = Point(x: 1, y: 2)
var pointB = pointA // Se realiza una copia completa

// Uso Común:
// Las structs son útiles para modelar tipos de datos...
// que representan valores simples y no requieren herencia.
// Pueden ser más eficientes en términos de rendimiento...
// y son preferibles cuando se desea inmutabilidad...
// y copias automáticas de valores.

// En resumen, las structs en Swift son una forma poderosa...
// de definir tipos de datos ligeros y eficientes que se...
// pasan por valor. Son especialmente útiles cuando se trabaja...
// con valores simples y no se necesita...
// compartir referencias a los mismos.
