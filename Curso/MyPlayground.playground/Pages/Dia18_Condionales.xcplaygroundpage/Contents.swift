import Foundation


// ----- Condicionales: -----


// os condicionales se utilizan para controlar...
// el flujo de ejecución del código.
// Los condicionales más comunes son if, else if y else.
// Aquí tienes un ejemplo básico:

let numero = 10

if numero > 0 {
    print("El número es positivo")
} else if numero == 0 {
    print("El número es cero")
} else {
    print("El número es negativo")
}

// Además, Swift también cuenta con el operador ternario,...
// que es una forma concisa de expresar condicionales simples.
// Por ejemplo:

let esPar = numero % 2 == 0 ? true : false


// ---- 1. Operadores Lógicos: ----

// repasodo en anteriores lecciones,...
// Puedes combinar condiciones usando...
// operadores lógicos como && (AND), || (OR) y ! (NOT).
// Ejemplo:

if edad >= 18 && tieneID {
    print("Puede ingresar al lugar")
}

// Repaso .....

// Los operadores lógicos son elementos fundamentales...
// en la programación que se utilizan para combinar...
// o modificar expresiones lógicas. Estas expresiones...
// lógicas involucran valores booleanos (verdadero o falso)...
// y son esenciales para controlar el flujo de ejecución en un programa.

// AND (&&):

// Este operador devuelve true si ambas expresiones...
// que conecta son verdaderas; de lo contrario, devuelve false.
// Es representado por &&. Ejemplo:

let edad = 25
let tieneID = true

if edad >= 18 && tieneID {
    print("Puede ingresar al lugar")
}

// OR (||):

// El operador OR devuelve true si al menos...
// una de las expresiones que conecta es verdadera;
// devuelve false si ambas son falsas.
// Es representado por ||. Ejemplo:

let esEstudiante = true
let esEmpleado = false

if esEstudiante || esEmpleado {
    print("Tiene algún tipo de afiliación")
}


// NOT (!):

// Este operador invierte el valor de la expresión...
// lógica a la que se aplica.
// Si la expresión es verdadera, ! la hará falsa, y viceversa.
// Ejemplo:

let llueve = true

if !llueve {
    print("No está lloviendo")
}

// Estos operadores lógicos son esenciales para...
// construir condiciones más complejas en tus programas.
// Se utilizan en declaraciones if, while, switch,...
// y en cualquier contexto en el que necesites evaluar...
// condiciones basadas en la lógica booleana.
// Permiten tomar decisiones en función de varias...
// condiciones y controlar el flujo de ejecución en tu código.


// ---- Optional Binding: ----


// Para manejar valores opcionales de manera segura,...
// puedes utilizar if let o guard let.
// Ejemplo:

if let nombre = optionalNombre {
    print("El nombre es \(nombre)")
} else {
    print("No hay nombre disponible")
}

// son una característica que permite desempaquetar...
// de manera segura los valores opcionales. En Swift,...
// un valor opcional es aquel que puede contener...
// un valor o ser nil (vacío). Para manejar estos...
// valores de manera segura y evitar errores al...
// intentar acceder a un valor que no existe,...
// se utiliza el "Optional Binding".

// La forma más común de realizar Optional...
// Binding es mediante el uso de if let o guard let.
// Aquí hay un ejemplo con if let:

let nombre: String? = "John"

if let nombreDesempaquetado = nombre {
    print("El nombre es \(nombreDesempaquetado)")
} else {
    print("El nombre es nil")
}

// En este ejemplo, nombre es un valor opcional de tipo String.
// La estructura if let verifica si nombre...
// tiene un valor distinto de nil. Si es así,...
// el valor se asigna a la constante nombreDesempaquetado...
// dentro del bloque if, y puedes usar este valor de manera...
// segura dentro de ese bloque.
// Si nombre es nil, el bloque else se ejecutará.

// También puedes usar guard let, que funciona de manera similar,...
// pero se utiliza principalmente en funciones...
// para salir temprano si el valor es nil. Aquí hay un ejemplo:

func imprimirNombre(_ nombre: String?) {
    guard let nombreDesempaquetado = nombre else {
        print("El nombre es nil")
        return
    }
    
    print("El nombre es \(nombreDesempaquetado)")
}

imprimirNombre("Alice") // Imprime "El nombre es Alice"
imprimirNombre(nil)      // Imprime "El nombre es nil"


// Estos patrones de Optional Binding ayudan a evitar...
// errores relacionados con valores opcionales y fomentan...
// un código más seguro al obligar al programador a manejar...
// explícitamente la posibilidad de que un valor pueda ser nil.

// ---- Patrones de Coincidencia: ----



// El switch en Swift es muy potente y permite...
// utilizar patrones de coincidencia para comparar...
// valores de maneras más complejas.
// Ejemplo:

let respuesta = Resultado.error("Algo salió mal")
switch respuesta {
case .exito:
    print("Operación exitosa")
case .error(let mensaje):
    print("Error: \(mensaje)")
}


switch coordenadas {
case (0, 0):
    print("Estás en el origen")
case (let x, 0):
    print("En el eje x con valor \(x)")
default:
    print("Otras coordenadas")
}

// Los patrones de coincidencia son una característica...
// poderosa de Swift que te permite comparar y descomponer...
// valores de manera más expresiva y flexible en estructuras...
// como switch, if case, y for case.
// Los patrones de coincidencia hacen...
// que el código sea más legible y conciso,...
// permitiendo un manejo más eficiente y detallado de los datos.

// Patrones de Valor:

// Coinciden con un valor específico.
// Pueden ser usados en switch, if case, y más. Ejemplo:

let color = "rojo"
switch color {
case "rojo":
    print("El color es rojo")
case "azul":
    print("El color es azul")
default:
    print("Otro color")
}

// Patrones de Rango:

// Permiten verificar si un valor está...
// dentro de un rango específico.
// Puedes usarlos en switch y if case. 
// Ejemplo:

let edad = 25
switch edad {
case 0..<18:
    print("Menor de edad")
case 18...65:
    print("Adulto")
default:
    print("Mayor de 65")
}


// Patrones de Tupla:

// Coinciden con los elementos de una tupla.
// Pueden ser utilizados en switch,...
// if case y en otras situaciones. Ejemplo:

let coordenadas = (1, 1)
switch coordenadas {
case (0, 0):
    print("En el origen")
case (_, 0):
    print("En el eje x")
default:
    print("Otras coordenadas")
}


// Patrones de Enumeración:

// Coinciden con los casos de una enumeración.
// Esto es muy útil al trabajar con tipos enumerados.
// En futuras menciones veremos esta estructuras...
// mas ampliamente.
// Ejemplo:

enum Resultado {
    case exito
    case error(String)
}



// ---- Condicionales con Rangos: ---


// Puedes utilizar rangos en condiciones,...
// como en el ejemplo anterior con el...
// operador "...." Esto puede hacer que...
// las condiciones sean más expresivas.

// son una característica que permite evaluar si...
// un valor está dentro de un rango específico.
// Esto facilita la escritura de condiciones más...
// expresivas y legibles cuando necesitas comparar...
// si un valor se encuentra en cierto intervalo.
// Los operadores utilizados para expresar rangos son "..<" y "...."


//Operador ..< (Rango Abierto):

// Este operador crea un rango que no incluye el valor final.
// Por ejemplo:

let edad = 25

if edad >= 18 && edad < 21 {
    print("Eres un adulto joven")
}


// Puedes expresar lo mismo usando el operador de rango abierto:

if edad >= 18 && edad < 21 {
    print("Eres un adulto joven")
}


// Operador ... (Rango Cerrado):

// Este operador crea un rango que incluye...
// tanto el valor inicial como el valor final.
// Ejemplo:

let rangoNumerico = 1...5

if rangoNumerico.contains(3) {
    print("El número 3 está en el rango")
}

// Aquí, el rango 1...5 incluye los valores 1, 2, 3, 4 y 5.

// Estos operadores de rango hacen que las condiciones...
// sean más concisas y legibles, evitando la necesidad...
// de escribir múltiples comparaciones. Además, son útiles...
// en contextos como switch statements donde puedes utilizar...
// rangos para definir casos específicos.

let puntaje = 85

switch puntaje {
case 0..<50:
    print("Insuficiente")
case 50..<70:
    print("Aprobado")
case 70...100:
    print("Excelente")
default:
    print("Puntaje no válido")
}

// En este ejemplo, el switch utiliza condicionales...
// con rangos para clasificar diferentes rangos de...
// puntajes en categorías específicas. Esto hace que...
// el código sea más claro y fácil de entender.



// ---- Condicionales en Cierre (Closure): ----


// Puedes usar condicionales dentro de closures...
// para lograr un comportamiento más dinámico. Ejemplo:

let closure: () -> Void = {
    if condicion {
        print("Cumple la condición")
    } else {
        print("No cumple la condición")
    }
}

// un "closure" es una función sin nombre que puede...
// capturar y almacenar referencias a variables...
// y constantes de su contexto circundante.
// Los closures en Swift son similares a funciones,...
// pero se definen de una manera más concisa y flexible.
// También se les conoce como bloques de código anónimos...
// o funciones anónimas en otros lenguajes de programación.


// ---- Características clave de los closures: ----


// **** Sintaxis Concisa: ****

// Los closures en Swift tienen una sintaxis compacta,...
// lo que los hace útiles para funciones de orden superior,...
// como argumentos de funciones y devolución de funciones.


// **** Captura de Variables y Constantes: ****

// Los closures pueden capturar y almacenar referencias...
// a variables y constantes de su contexto circundante.
// Esto significa que pueden acceder y modificar esas...
// variables incluso después de que el contexto...
// original haya terminado de ejecutarse.


// **** Funciones de Primer Orden: ****

// Los closures son funciones de primer orden,...
// lo que significa que pueden ser pasados como...
// argumentos a otras funciones y también pueden...
// ser devueltos como valores desde otras funciones.


// **** Captura de Valores por Referencia o por Valor: ****

// Los closures pueden capturar valores...
// por referencia o por valor.
// Esto se controla automáticamente por Swift,...
// dependiendo de si la variable o constante...
// capturada es mutable o inmutable.

// Ejemplos de Closures:

// Closure Simple:
let sumar: (Int, Int) -> Int = { (a, b) in
    return a + b
}
let resultado = sumar(3, 5) // resultado es 8



// Closure como Argumento:
func ejecutarClosure(closure: () -> Void) {
    // Hacer algo antes de ejecutar el closure
    closure()
    // Hacer algo después de ejecutar el closure
}

ejecutarClosure {
    print("Este es un closure")
}


//Captura de Variables en Closures:
func hacerIncrementador(incremento: Int) -> () -> Int {
    var total = 0
    let incrementador: () -> Int = {
        total += incremento
        return total
    }
    return incrementador
}

let incrementarEnDiez = hacerIncrementador(incremento: 10)
print(incrementarEnDiez()) // 10
print(incrementarEnDiez()) // 20

// Los closures son fundamentales en Swift...
// y se utilizan extensamente en la programación...
// funcional y en API de alto nivel en iOS y macOS,...
// lo que permite un código más limpio y expresivo.

// se bolberar a repasar estas funciones en futura  menciones

