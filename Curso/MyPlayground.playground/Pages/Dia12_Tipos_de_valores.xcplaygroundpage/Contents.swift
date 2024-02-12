import Foundation



// ---- Repaso: Tipos de valores en Swift ----

// los valores se pueden clasificar en varios tipos...
// según su naturaleza y propósito.
// Aquí hay una descripción general...
// de los principales tipos de valores en Swift:

// Integers (Enteros):
// Representan números enteros y pueden ser de tipo...
// Los números que acompañan a la palabra reservada Int en Swift,...
// como Int8, Int16, Int32, o Int64,...
// se refieren a la cantidad de bits...
// que cada tipo puede almacenar y, por lo tanto,...
// determinan el rango de valores que pueden representar.
// Aquí hay una breve explicación de cada uno:

// Int:
// La elección del tipo Int específico depende de la magnitud...
// de los valores que esperas almacenar.
// Si estás seguro de que los valores estarán...
// dentro de un rango más pequeño, puedes optar...
// por un tipo con menos bits para ahorrar espacio en la memoria.
// Por otro lado, si necesitas manejar números más grandes,...
// puedes elegir un tipo con más bits para evitar desbordamientos o pérdida de precisión.

// Int8:
// Representa enteros con 8 bits de almacenamiento.
// Rango: -128 a 127.

// Int16:
// Representa enteros con 16 bits de almacenamiento.
// Rango: -32,768 a 32,767.

// Int32:
// Representa enteros con 32 bits de almacenamiento.
// Rango: -2,147,483,648 a 2,147,483,647.

// Int64:
// Representa enteros con 64 bits de almacenamiento.
// Rango: -9,223,372,036,854,775,808 a 9,223,372,036,854,775,807.


//Floating-Point (Punto Flotante):
//Representan números decimales y pueden ser de tipo Double o Float.

// Booleans (Booleanos):
//Representan valores de verdadero o falso y son de tipo Bool.

// Characters (Caracteres):
// Representan un único carácter y son de tipo Character.

// Strings (Cadenas de texto):
// Representan una secuencia de caracteres y son de tipo String.


// Ejemplos de valores en código:
let entero: Int = 42
let decimal: Double = 3.14
let booleano: Bool = true // false
let caracter: Character = "A"
let cadena: String = "Hola, mundo!"


// ---- Valores Compuestos ----

// uplas (Tuples):
// Permiten agrupar múltiples valores en una sola entidad.

// Arrays (Arreglos):
// Almacenan una colección ordenada de elementos del mismo tipo.

// Sets (Conjuntos):
// Almacenan una colección no ordenada y sin duplicados de elementos.

// Diccionarios (Dictionaries): 
// Almacenan pares clave-valor.

// Ejemplos de valores en código:
let tupla: (Int, String) = (1, "Manzana")
let arreglo: [Int] = [1, 2, 3, 4, 5]
let conjunto: Set<String> = ["Rojo", "Verde", "Azul"]
let diccionario: [String: Int] = ["Uno": 1, "Dos": 2, "Tres": 3]



// ---- Valores Obcionales ----

// Optionals:
// Permiten representar la ausencia de un valor...
// y son útiles para manejar valores nulos.

// Ejemplos de valores en código:
var opcionalInt: Int? = 42
opcionalInt = nil


// ---- Valores Enumerados: ----

// Enumerations (Enums):
// Definen un conjunto de valores posibles y son de gran...
// utilidad para trabajar con casos discretos.

// Ejemplos de valores en código:
enum Estado {
    case activo
    case inactivo
}

let miEstado: Estado = .activo



// ---- Valores AnyObject: ----

// Any:
// Puede representar un valor de cualquier tipo,...
//incluidos los tipos de función y los tipos de estructura.

// AnyObject:
// Puede representar una instancia de cualquier clase.

// Ejemplos de valores en código:
var valorAny: Any = 42
valorAny = "Hola, mundo!"

var valorObject: AnyObject = "Un objeto de clase"


// ---- Valores Funciones: ----

// Tipos de Funciones:
// Además de la representación de funciones con parámetros...
// y valores de retorno específicos,...
// Swift permite definir tipos de funciones.

// Ejemplos de valores en código:
typealias OperacionMatematica = (Int, Int) -> Int

func suma(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let miOperacion: OperacionMatematica = suma
let resultadoOperacion = miOperacion(10, 20)


// ---- Valores Subrangos: ----

// Rangos (Ranges):
// Representan un rango de valores y pueden ser cerrados o semiabiertos.

// Ejemplos de valores en código:
let rangoCerrado = 1...5  // Incluye los valores 1, 2, 3, 4, 5
let rangoSemiabierto = 1..<5  // Incluye los valores 1, 2, 3, 4


// ---- Valores Subrangos: ----


// Errores (Errors):
// En Swift, se utilizan para representar situaciones inesperadas o excepcionales.

// Ejemplos de valores en código:
enum MiError: Error {
    case valorInvalido
}

func procesarAlgo(_ valor: Int) throws {
    guard valor > 0 else {
        throw MiError.valorInvalido
    }
    // Proceso normal aquí
}

