import Foundation




// ----- Tuplas: -----

// Las tuplas en Swift son un tipo de dato que permite...
// agrupar múltiples valores en una sola variable.
// Pueden contener valores de diferentes tipos y son...
// útiles para devolver varios valores desde una función...
// o para agrupar datos relacionados. Aquí tienes algunos...
// ejemplos de cómo puedes trabajar con tuplas en Swift:


// ***---- Declaración de Tuplas: ***----

// Tuplas sin Nombres de Elementos:

let myTuple1 = (1, "apple", true)

// En este ejemplo, estamos declarando una...
// tupla sin nombres de elementos.
// Los valores (1, "apple", true) forman...
// una tupla que contiene un entero,...
// una cadena y un booleano. Aquí,...
// Swift infiere automáticamente los...
// tipos de datos para cada elemento de la tupla.


// Tuplas con Nombres de Elementos:

let myTuple2 = (id: 1, name: "apple", isAvailable: true)

// En este caso, estamos declarando una...
// tupla con nombres de elementos.
// Cada valor tiene un nombre asociado,...
// como id, name y isAvailable.
// Esto puede hacer que el código...
// sea más legible y comprensible,...
// especialmente cuando se trabaja...
// con tuplas que tienen varios elementos.

// En ambos casos, puedes acceder a los elementos...
// de la tupla mediante índices (para tuplas sin nombres)...
// o mediante los nombres asociados (para tuplas con nombres).


// Acceso a Elementos de una Tupla:

// Acceso por índice (para tuplas sin nombres)
let firstElement = myTuple1.0   // 1
let secondElement = myTuple1.1  // "apple"
let thirdElement = myTuple1.2   // true

// Acceso por nombre (para tuplas con nombres)
let idValue = myTuple2.id            // 1
let nameValue = myTuple2.name         // "apple"
let availabilityValue = myTuple2.isAvailable  // true


// El acceso a los elementos puede realizarse...
// mediante el índice numérico correspondiente...
// o mediante el nombre asignado a cada elemento en la tupla.


// Descomposición de Tuplas:

// La descomposición de tuplas es una forma conveniente...
// de extraer los valores de una tupla...
// y asignarlos a variables individuales.

// Descomposición de tupla sin nombres
let (number, fruit, isAvailable) = myTuple1
print(number)       // 1
print(fruit)        // "apple"
print(isAvailable)   // true

// Descomposición de tupla con nombres
let (id, _, _) = myTuple2
print(id)           // 1


// Aquí, estamos utilizando la descomposición para asignar...
// los valores de la tupla a variables individuales.
// El guion bajo _ se utiliza para ignorar valores...
// que no necesitamos en la descomposición.

// Estas son algunas de las formas en que puedes declarar,...
// acceder y descomponer tuplas en Swift.
// Las tuplas son útiles cuando necesitas...
// agrupar varios valores juntos, especialmente...
// cuando esos valores no necesariamente forman...
// una entidad más compleja, como una clase o una estructura.

// Tuplas en Funciones:

// En Swift, puedes utilizar tuplas como un tipo de retorno...
// para que una función pueda devolver múltiples valores como...
// una sola entidad. Esto es especialmente útil cuando necesitas...
// devolver información relacionada entre sí y quieres evitar...
// crear una estructura o una clase solo para ese propósito.

// Definición de una función que retorna una tupla
func getPersonInfo() -> (name: String, age: Int, city: String) {
    let name = "Juan"
    let age = 30
    let city = "EjemploCity"

    // Devolución de una tupla
    return (name, age, city)
}

// Llamada a la función y captura de la tupla resultante
let personInfo = getPersonInfo()

// Acceso a los elementos de la tupla por nombre
let personName = personInfo.name
let personAge = personInfo.age
let personCity = personInfo.city

// Impresión de los valores
print("Nombre: \(personName), Edad: \(personAge), Ciudad: \(personCity)")

// En este ejemplo, la función getPersonInfo devuelve...
// una tupla con tres elementos: name, age, y city.
// Cuando llamamos a la función, capturamos la tupla...
// resultante en una variable llamada personInfo.
// Luego, podemos acceder a los elementos individuales...
// de la tupla utilizando los nombres...
// que les dimos al definir la función.

// El uso de tuplas en funciones es una forma concisa...
// y conveniente de devolver varios valores relacionados...
// sin tener que definir una estructura o una clase específica...
// para ese propósito. Sin embargo, ten en cuenta que si necesitas...
// métodos y comportamientos más complejos, es posible que desees...
// considerar el uso de tipos más avanzados, como estructuras o clases.
// Las tuplas son útiles para situaciones simples y temporales donde...
// la relación entre los valores es clara...
// y no requiere funcionalidades adicionales.
