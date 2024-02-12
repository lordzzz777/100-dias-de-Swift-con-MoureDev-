import Foundation


// ---- Funciones ----

// las funciones son bloques de código que realizan...
// una tarea específica y pueden ser llamadas desde...
// otros lugares del código para ejecutar esa tarea.
// Las funciones en Swift siguen una sintaxis clara...
// y permiten la reutilización de código,...
// lo que facilita la organización y mantenimiento del software.


// Declaración de Funciones:

// Para declarar una función en Swift,...
// se utiliza la palabra clave func.
// Se especifica un nombre para la función,...
// seguido de paréntesis que pueden contener parámetros.
// Se indica el tipo de retorno después...
// de una flecha (->) si la función devuelve un valor.

func saludar() {
    print("¡Hola!")
}

func sumar(a: Int, b: Int) -> Int {
    return a + b
}

// Llamada de Funciones:

// Para llamar a una función, se utiliza...
// el nombre de la función seguido de paréntesis.
// Si la función devuelve un valor, puedes utilizar...
// ese valor o ignorarlo si no es necesario.

saludar()
let resultado = sumar(a: 3, b: 4)

// Parámetros y Argumentos:
// Las funciones pueden aceptar parámetros,...
// que son valores que se pasan a la función cuando se llama.
// Los parámetros se definen dentro de los paréntesis...
// de la declaración de la función.
// Los argumentos son los valores reales...
// que se pasan a la función al llamarla.

func saludar2(nombre: String) {
    print("¡Hola, \(nombre)!")
}

saludar2(nombre: "Juan")

// Valores de Retorno:
// Las funciones pueden devolver un valor utilizando la palabra clave return.
// El tipo de retorno de la función se especifica después de la flecha (->).

func multiplicar(a: Int, b: Int) -> Int {
    return a * b
}

let resultadoMultiplicacion = multiplicar(a: 2, b: 3)

// Funciones sin Valor de Retorno:
// Si una función no devuelve ningún valor,...
// se especifica Void o simplemente se omite el tipo de retorno.

func imprimirMensaje() {
    print("Este es un mensaje.")
}

// Estos son conceptos básicos sobre funciones en Swift.
// Pueden incluirse más características avanzadas,...
// como parámetros opcionales, valores por defecto,...
// funciones anidadas, y más.

// Parámetros Opcionales:
// Puedes definir parámetros opcionales agregando un signo...
// de interrogación (?) después del tipo de dato.

// Los parámetros opcionales pueden ser nulos (nil),...
// lo que significa que no es necesario...
// proporcionar un valor al llamar a la función.

func saludar(nombre: String?) {
    if let nombre = nombre {
        print("¡Hola, \(nombre)!")
    } else {
        print("¡Hola, desconocido!")
    }
}

saludar(nombre: "Juan")
saludar(nombre: nil)

// Valores por Defecto:
// Puedes asignar valores por defecto a los parámetros,...
// lo que significa que no es necesario proporcionar...
// un valor al llamar a la función,...
// a menos que desees cambiar el valor predeterminado.

func saludar(nombre: String = "Invitado") {
    print("¡Hola, \(nombre)!")
}

saludar()           // Imprime: ¡Hola, Invitado!
saludar(nombre: "Juan")

// Etiquetas de Argumentos Personalizadas:
// Puedes utilizar etiquetas de argumentos personalizadas...
// para hacer que la llamada a la función sea más legible.

func calcularArea(ancho w: Double, altura h: Double) -> Double {
    return w * h
}

let area = calcularArea(ancho: 5.0, altura: 3.0)

// Funciones Anidadas:
// Puedes definir funciones dentro de otras...
// funciones (funciones anidadas).
// Las funciones anidadas pueden acceder...
// a las variables y parámetros de la función que las contiene.

func multiplicarPorDos(_ x: Int) -> Int {
    func sumar(_ a: Int, _ b: Int) -> Int {
        return a + b
    }

    let resultadoSuma = sumar(x, x)
    return resultadoSuma
}

let resultado = multiplicarPorDos(3)  // resultado = 6



// **** Cierre de Función (Closure):****

// Los cierres son bloques de código autocontenidos...
// que pueden ser asignados a variables o pasados...
// como argumentos a funciones.

// Los cierres son similares a las funciones anónimas...
// o lambdas en otros lenguajes de programación.

// Sintaxis de Cierre:

// Los cierres en Swift pueden tener...
// una sintaxis compacta y expresiva.
// Pueden capturar y almacenar referencias...
// a variables y constantes de su contexto circundante.

// Hay varias formas de escribir...
// la sintaxis de un cierre, pero la forma más simple es:

let closureSimple = { (parámetros) -> TipoDeRetorno in
    // Código del cierre
}

let sumaClosure = { (a: Int, b: Int) -> Int in
    return a + b
}


// Infiriendo Tipo de Retorno y Parámetros:

// Si el tipo de retorno y los parámetros pueden...
// ser inferidos por el compilador, puedes omitirlos.
// Swift puede deducir automáticamente esta información.

let sumaClosure = { (a, b) in
    a + b
}

// Cierres como Variables y Constantes:

// Los cierres pueden ser asignados a variables...
// o constantes, y luego llamados como funciones regulares.

let multiplicarClosure: (Int, Int) -> Int = { $0 * $1 }
let resultado = multiplicarClosure(3, 4)  // resultado = 12

// Captura de Variables:

// Los cierres pueden capturar y almacenar referencias...
// a variables y constantes del contexto en el que son...
// creados, incluso después de que ese contexto...
// haya salido de alcance.

func hacerIncrementador(incremento: Int) -> () -> Int {
    var total = 0

    let incrementador: () -> Int = {
        total += incremento
        return total
    }

    return incrementador
}

let incrementarEnDiez = hacerIncrementador(incremento: 10)
print(incrementarEnDiez())  // 10
print(incrementarEnDiez())  // 20

// Escaping Closures:

// Un cierre que es pasado como argumento a una función...
// y es llamado después de que la función ha retornado...
// se considera "escapante". En tal caso, debes marcar...
// el parámetro con la palabra clave @escaping.

var completado: (() -> Void)?

func hacerAlgo(completion: @escaping () -> Void) {
    completado = completion
}

// Autocierre (Autoclosures):

// Un autocierre es un tipo especial de cierre que...
// se utiliza como argumento de función y se ejecuta...
// automáticamente sin la necesidad de llaves {}.

func imprimirSiEsVerdadero(_ resultado: @autoclosure () -> Bool) {
    if resultado() {
        print("Es verdadero")
    }
}

imprimirSiEsVerdadero(5 > 3)  // Imprime: Es verdadero


// **** Funciones como Tipos de Datos: ****

// Las funciones son tipos de datos de primera clase,...
// lo que significa que puedes pasar funciones como...
// argumentos a otras funciones, devolver funciones...
// desde funciones y asignar funciones a variables.

// La capacidad de tratar las funciones como tipos de datos...
// de primera clase significa que puedes asignar funciones...
// a variables, pasar funciones como argumentos a otras...
// funciones y devolver funciones desde otras funciones.
// Esto brinda una flexibilidad significativa...
// en el diseño de software y permite construir código...
// más modular y reutilizable.
// Aquí hay más detalles sobre este concepto:

// Asignación de Funciones a Variables:

// Puedes asignar una función a una variable...
// y luego llamar a esa variable como si fuera una función.

func suma(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let operacion: (Int, Int) -> Int = suma
let resultado = operacion(3, 4)  // resultado = 7

// Pasaje de Funciones como Argumentos:

// Puedes pasar funciones como argumentos a otras funciones.

func aplicarOperacion(_ a: Int, _ b: Int, operacion: (Int, Int) -> Int) -> Int {
    return operacion(a, b)
}

let sumaResultado = aplicarOperacion(3, 4, operacion: suma)  // sumaResultado = 7

// Devolver Funciones desde Otras Funciones:

// Puedes devolver funciones desde otras funciones.

func obtenerOperacion(_ operador: String) -> (Int, Int) -> Int {
    switch operador {
    case "+":
        return suma
    case "*":
        return { $0 * $1 }
    default:
        fatalError("Operador no soportado")
    }
}

let operacionMultiplicacion = obtenerOperacion("*")
let resultadoMultiplicacion = operacionMultiplicacion(3, 4)  // resultadoMultiplicacion = 12

// Uso de Cierres (Closures):

// Los cierres también pueden tratarse como...
// tipos de datos de primera clase y utilizarse...
// de manera similar a las funciones.

let multiplicarPorTres: (Int) -> Int = { numero in
    return numero * 3
}

let resultadoClosure = multiplicarPorTres(4)  // resultadoClosure = 12

//Funciones Anidadas y Captura de Variables:

// Las funciones anidadas pueden capturar y almacenar...
// variables de la función que las contiene.
// Esto se conoce como "captura de variables".

func obtenerIncrementador(incremento: Int) -> () -> Int {
    var total = 0

    let incrementador: () -> Int = {
        total += incremento
        return total
    }

    return incrementador
}

let incrementarEnDos = obtenerIncrementador(incremento: 2)
let resultado1 = incrementarEnDos()  // resultado1 = 2
let resultado2 = incrementarEnDos()  // resultado2 = 4

// Esta capacidad de tratar las funciones como tipos...
// de datos de primera clase es fundamental para muchos...
// paradigmas de programación, como programación funcional...
// y programación orientada a objetos. Facilita la creación...
// de código más modular, reutilizable y fácil de entender.


// **** Funciones Variádicas: ****

// son funciones que pueden aceptar un número...
// variable de argumentos del mismo tipo.
// Estas funciones utilizan la sintaxis...
// de puntos suspensivos (...) después del...
// tipo de parámetro para indicar que pueden...
// recibir múltiples valores del mismo tipo.

// Declaración de Funciones Variádicas:
// Para declarar una función variádica, 
// coloca puntos suspensivos (...) después...
// del tipo del último parámetro de la función.

// Los parámetros variádicos se agrupan en un array dentro de la función.

func sumarNumeros(_ numeros: Int...) -> Int {
    return numeros.reduce(0, +)
}

// Llamada a Funciones Variádicas:

// Al llamar a una función variádica,...
// puedes proporcionar cualquier...
// cantidad de argumentos del tipo especificado.

let sumaTotal = sumarNumeros(1, 2, 3, 4, 5)  // sumaTotal = 15

// Uso de la Función reduce:

// Las funciones variádicas suelen utilizar...
// la función reduce para combinar los...
// valores en un solo resultado.

// En el ejemplo anterior, reduce(0, +)...
// se utiliza para sumar todos los elementos del array.

// Restricciones de Funciones Variádicas:

// Las funciones variádicas solo pueden tener un parámetro variádico.
// El parámetro variádico debe ser el último parámetro de la función.

// // Esto generaría un error porque el parámetro variádico no es el último
// func ejemploIncorrecto(_ a: Int..., _ b: Int) { }

// Funciones Variádicas con Otros Parámetros:
// Puedes combinar parámetros variádicos con otros parámetros normales.

func imprimirDetalles(titulo: String, numeros: Int...) {
    print("Titulo: \(titulo)")
    print("Numeros: \(numeros)")
}

imprimirDetalles(titulo: "Ejemplo", numeros: 1, 2, 3, 4)

// Parámetros Variádicos en Arrays Existentes:

// Puedes usar la sintaxis de puntos suspensivos (...)...
// para descomponer un array existente...
// y pasar sus elementos como argumentos variádicos.

let arrayDeNumeros = [1, 2, 3, 4, 5]
let sumaDesdeArray = sumarNumeros(arrayDeNumeros...)

// Las funciones variádicas son útiles cuando no...
// se conoce de antemano cuántos argumentos se...
// proporcionarán, y proporcionan flexibilidad...
// para trabajar con diferentes cantidades de datos.
// Es importante tener en cuenta las restricciones...
// y asegurarse de que el parámetro variádico...
// sea el último en la lista de parámetros.

// **** In-Out Parameters: ****

// son una característica que permite modificar el valor...
// de un parámetro desde dentro de una función y reflejar...
// esos cambios fuera de la función, es decir,...
// afectar la variable original que se pasó como argumento.

// Declaración de Parámetros inout:

// Para indicar que un parámetro puede ser modificado...
// dentro de una función y que esos cambios deben reflejarse...
// fuera de la función, se utiliza la palabra clave inout...
// en la declaración de la función y en la llamada a la función.

func duplicarInPlace(_ numero: inout Int) {
    numero *= 2
}

var miNumero = 7
duplicarInPlace(&miNumero)
print(miNumero)  // Imprime: 14

// Uso del Operador &:

// Al llamar a una función con un parámetro inout,...
// debes preceder el argumento con el operador &.
// Esto indica que estás pasando una referencia...
// a la variable y que la función puede modificar su valor.

var x = 5, y = 10
intercambiarValores(&x, &y)

// Restricciones y Limitaciones:

// Los parámetros inout no pueden tener un valor...
// predeterminado y no pueden ser utilizados...
// con parámetros variádicos (...).

// No puedes pasar constantes o literales...
// como argumentos inout. 
// Debes pasar una variable mutable.

// Esto generará un error
// intercambiarValores(&5, &10)

// Ámbito de Modificación:

// Los parámetros inout pueden ser modificados dentro...
// del cuerpo de la función y cualquier cambio se reflejará...
// en la variable original fuera de la función.

func modificarTexto(_ texto: inout String) {
    texto += " modificado"
}

var mensaje = "Hola"
modificarTexto(&mensaje)
print(mensaje)  // Imprime: "Hola modificado"

// Usos Comunes:

// Los parámetros inout son útiles cuando quieres...
// que una función realice una operación...
// que modifique el valor de una variable externa.

// Se utilizan en situaciones donde deseas...
// que una función actúe como una especie de función mutadora.

func incrementarEnDiez(_ numero: inout Int) {
    numero += 10
}

var contador = 5
incrementarEnDiez(&contador)

// Los parámetros inout son una herramienta poderosa,...
// pero se deben usar con precaución para evitar efectos...
// secundarios inesperados. Además, su uso puede afectar...
// la legibilidad del código, por lo que se recomienda...
// utilizarlos solo cuando sea necesario para lograr...
// un comportamiento específico.



// **** Funciones Genéricas: ****

// son un mecanismo poderoso que te permite escribir...
// funciones y tipos flexibles y reutilizables que pueden...
// trabajar con varios tipos de datos sin sacrificar...
// la seguridad de tipo. Esto significa que puedes...
// escribir código que es independiente del tipo de datos...
// específico con el que está trabajando y,...
// al mismo tiempo, aprovechar la verificación...
// de tipos en tiempo de compilación.

// Sintaxis Básica:

// Para definir una función genérica,...
// utiliza paréntesis angulares (<T>)...
// después del nombre de la función...
// o del nombre de los parámetros...
// que deben ser genéricos.

func intercambiarValores<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

// En este ejemplo, T es un tipo genérico que será...
// inferido según el tipo de datos que se pasa como argumento.

// Uso de Tipos Genéricos:

// Cuando llamas a una función genérica,...
// el tipo de datos con el que la función...
// opera es determinado automáticamente por...
// el compilador basándose en los tipos de...
// datos de los argumentos proporcionados.

var x = 5, y = 10
intercambiarValores(&x, &y)

// En este caso, el compilador infiere que...
// T es Int basándose en los tipos de x e y.

// Restricciones de Tipo:

// Puedes aplicar restricciones de tipo a los parámetros...
// genéricos para especificar ciertas características...
// que deben cumplir los tipos utilizados con la función genérica.

func imprimir<T: CustomStringConvertible>(_ valor: T) {
    print("El valor es: \(valor)")
}

// En este ejemplo, T debe conformarse al protocolo...
// CustomStringConvertible, lo que significa...
// que el tipo T debe proporcionar una representación de cadena.

// Tipos Genéricos en Estructuras y Clases:

// Además de las funciones, puedes utilizar tipos genéricos...
// en la definición de estructuras y clases para crear...
// estructuras o clases que operen con tipos de datos...
// específicos sin especificarlos de antemano.

struct Contenedor<T> {
    var contenido: T
}

let contenedorEntero = Contenedor(contenido: 42)
let contenedorTexto = Contenedor(contenido: "Hola")

// En este ejemplo, Contenedor es una estructura...
// genérica que puede contener cualquier tipo de dato.

// Donde Cláusulas:

// Puedes utilizar cláusulas where para aplicar...
// restricciones adicionales a los tipos genéricos.

func combinar<T, U>(a: T, b: U) where T: Equatable, U: Equatable {
    return a == b
}

// En este ejemplo, la función combinar solo funciona...
// si ambos T y U son tipos que conforman al protocolo Equatable.

// Las funciones genéricas son fundamentales para la flexibilidad...
// y la reutilización de código en Swift. Permiten escribir...
// código que es más general y aplicable a una amplia variedad...
// de situaciones sin perder la seguridad de tipo característica de Swift.
