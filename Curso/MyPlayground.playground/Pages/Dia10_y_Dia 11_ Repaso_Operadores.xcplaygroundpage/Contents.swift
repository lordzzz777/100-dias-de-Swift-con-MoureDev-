import Foundation


// ---- Repaso: Operadores ----

// Los operadores son símbolos o palabras clave que...
// realizan operaciones en uno o más valores y devuelven...
// un resultado. Estas operaciones pueden ser aritméticas,...
// de comparación, lógicas, de asignación, entre otras.
// Los operadores son fundamentales para la creación...
// de expresiones y la manipulación de datos en un programa.
// Existen varios tipos de operadores en Swift,...
// que se pueden clasificar de la siguiente manera:



// ---- Repaso: Operadores aritméticos ----

// Los operadores aritméticos son símbolos utilizados...
// en programación para realizar operaciones matemáticas...
// básicas entre dos o más valores. En Swift, los operadores...
// aritméticos incluyen las operaciones comunes como...
// suma, resta, multiplicación, división y módulo.
// Aquí tienes una descripción de cada uno de ellos:

// + (suma)
// - (resta)
// * (multiplicación)
// / (división)
// % (módulo)
// pow() para operaciones con potencia
// sqrt() raices cuadrada
// Para el resto de raíces también con...
// pow() pero con 1.0/n como segundo parámetro pow(numero, 10/numero)


// **** Suma (+): ****
// Realiza la adición de dos valores.

let resultado = 5 + 3  // resultado es 8

// **** Resta (-): ****
//Realiza la substracción del segundo valor al primero.

let resultado = 7 - 4  // resultado es 3

// **** Multiplicación (*): ****
// Realiza la multiplicación de dos valores.

let resultado = 2 * 6  // resultado es 12

// **** División (/): ****
// Realiza la división del primer valor por el segundo.

// **** Nota: si los operandos son enteros, el resultado será un entero.

let resultado = 10 / 3  // resultado es 3

// **** Módulo (%): ****
// Devuelve el residuo de la división del primer valor por el segundo.

let resultado = 10 % 3  // resultado es 1

// Estos operadores se utilizan comúnmente en cálculos matemáticos...
// y son esenciales en la programación para manipular y trabajar con números.
// También se pueden combinar con otros tipos de datos en Swift,...
// como variables y constantes, para realizar operaciones más complejas.


// ---- Repaso: Operadores de Comparación ----

// Los operadores de comparación en Swift permiten...
// comparar valores y expresiones, devolviendo...
// un resultado booleano que indica si la...
// comparación es verdadera o falsa.
// Aquí tienes algunos de los operadores...
// de comparación más comunes en Swift:

// == (igual a)
// != (no igual a)
// < (menor que)
// > (mayor que)
// <= (menor o igual que)
// >= (mayor o igual que)

// Igualdad (==):
// Verifica si dos valores son iguales.

let a = 5
let b = 5
let esIgual = (a == b)  // true

// Desigualdad (!=):
// Verifica si dos valores no son iguales.

let x = 10
let y = 20
let noEsIgual = (x != y)  // true


// Mayor que (>):
// Comprueba si el valor de la izquierda es mayor que el de la derecha.

let c = 7
let d = 5
let mayorQue = (c > d)  // true

// Menor que (<):
// Comprueba si el valor de la izquierda es menor que el de la derecha.

let e = 3
let f = 6
let menorQue = (e < f)  // true

// Mayor o igual que (>=):
// Comprueba si el valor de la izquierda es mayor o igual que el de la derecha.

let g = 4
let h = 4
let mayorOigual = (g >= h)  // true

// Menor o igual que (<=):
// Comprueba si el valor de la izquierda es menor o igual que el de la derecha.

let i = 8
let j = 10
let menorOigual = (i <= j)  // true

// Estos operadores son esenciales para realizar...
// comparaciones en lógica condicional, ...
// como en las instrucciones if, else if y switch.
// Además, se utilizan en expresiones que devuelven...
// un valor booleano basado en la relación entre dos valores.



// ---- Repaso: Operadores Lógicos ----


// Los operadores lógicos son herramientas fundamentales...
// en programación que permiten combinar o modificar ...
// el valor de expresiones booleanas.
// Estas expresiones booleanas representan...
// condiciones que pueden ser verdaderas...
// (true) o falsas (false). Los operadores lógicos más comunes son:

// && (y lógico)
// || (o lógico)
// ! (no lógico)

// AND Lógico (&&):
// Devuelve true si ambas expresiones son true,...
// de lo contrario, devuelve false.

let expresion1 = true
let expresion2 = false

let resultadoAND = expresion1 && expresion2  // Resultado: false

// OR Lógico (||):
// Devuelve true si al menos una de las expresiones es true,...
// de lo contrario, devuelve false.

let expresion3 = true
let expresion4 = false

let resultadoOR = expresion3 || expresion4  // Resultado: true

// NOT Lógico (!):
// Niega el valor de la expresión, es decir,...
// si la expresión es true, devuelve false,...
// y si es false, devuelve true.

let expresion5 = true

let resultadoNOT = !expresion5  // Resultado: false

// Estos operadores son especialmente útiles en...
// situaciones donde se necesitan tomar decisiones...
// basadas en condiciones. Por ejemplo,...
// al controlar el flujo de un programa...
// con estructuras condicionales (if, else if, else)...
// o al filtrar datos en colecciones.


// ---- Repaso: Operadores asignación ----


// Los operadores de asignación son utilizados...
// para asignar un valor a una variable o constante en Swift.
// Estos operadores simplifican la tarea de modificar...
// el valor de una variable al combinar la operación...
// con la asignación en una sola expresión.
// Aquí tienes algunos operadores de asignación comunes en Swift:

// = (asignación)
// += (asignación con suma)
// -= (asignación con resta)
// *= (asignación con multiplicación)
// /= (asignación con división)
// %= (asignación con módulo)

// Operador de Asignación (=):
// Asigna el valor de la derecha al operando de la izquierda.

var x = 10
let y = 5
x = y  // Ahora, x tiene el valor de y (x = 5)

// Operadores de Asignación con Operación Aritmética:
// Combina una operación aritmética con la asignación.

var a = 5
a += 3  // Equivalente a a = a + 3

// Otros operadores de este tipo incluyen -= (resta y asigna),...
// *= (multiplica y asigna), /= (divide y asigna), y %= (calcula el módulo y asigna).

var b = 10
b -= 2  // Equivalente a b = b - 2

// Operador Nil-Coalescing (??):
// Permite asignar un valor predeterminado...
// si el valor de la izquierda es nulo (opcional).

let valorOpcional: Int? = nil
let valorPredeterminado = valorOpcional ?? 0  // Si valorOpcional es nulo, se asigna 0

// Estos operadores de asignación son útiles para...
// escribir código más conciso y expresivo,...
// especialmente al realizar operaciones comunes,...
// como incrementar o decrementar valores,...
// o al manejar valores opcionales de manera más conveniente.


// ---- Repaso: Operadores rango ----


// En Swift, los operadores de rango son herramientas ...
// que permiten especificar un intervalo de valores.
// Hay dos tipos principales de operadores de rango:


// ... (rango cerrado)
// ..< (rango semiabierto)

// Rango Cerrado (a...b):
// Incluye todos los valores desde a hasta b, ambos inclusive.
// Ejemplo: 1...5 incluye los números 1, 2, 3, 4 y 5.

// Rango Semiabierto (a..<b):
// Incluye todos los valores desde a hasta (pero sin incluir) b.
// Ejemplo: 1..<5 incluye los números 1, 2, 3 y 4, pero no incluye el 5.

// Estos operadores son comúnmente utilizados...
// en bucles y expresiones que requieren trabajar...
// con un rango específico de valores. Aquí hay...
// algunos ejemplos de cómo se pueden usar en Swift:

// Rango Cerrado:

for numero in 1...5 {
    print(numero)
}
// Imprimirá los números del 1 al 5, inclusive.


// Rango Semiabierto:

for numero in 1..<5 {
    print(numero)
}
// Imprimirá los números del 1 al 4, excluyendo el 5.


// Validación con Rango:

let puntaje = 75
if puntaje >= 0 && puntaje <= 100 {
    print("El puntaje está en un rango válido.")
} else {
    print("El puntaje está fuera del rango permitido.")
}

// Los operadores de rango son útiles para hacer...
// que el código sea más conciso y legible,...
// especialmente cuando se trabaja con un conjunto ...
// específico de valores. También son muy utilizados...
// en Swift para manipulación de índices en colecciones...
// y otros contextos.




// ---- Repaso: Operadores rango ----


// El operador Nil-Coalescing (??) es un operador...
// de Swift que proporciona una forma concisa de ....
// trabajar con valores opcionales (optionals).
// Este operador se utiliza para proporcionar ...
// un valor predeterminado en caso de ...
// que el valor opcional sea nil.

// ?? (nil-coalescing)

// La sintaxis básica del operador Nil-Coalescing es la siguiente:

a ?? b


// Donde a es un valor opcional y b es el valor...
// predeterminado que se utilizará si a es nil. 
// El resultado de esta expresión será el valor...
// de a si no es nil, y en caso contrario,...
// será el valor de b.

// Ejemplo:

let valorOpcional: Int? = nil
let valorPredeterminado = valorOpcional ?? 0
print(valorPredeterminado)  // Imprimirá 0, ya que valorOpcional es nil y se utiliza el valor predeterminado 0.

// En este ejemplo, valorOpcional es un valor opcional que es nil. 
// El operador Nil-Coalescing se encarga de asignar...
// el valor predeterminado 0 a la constante valorPredeterminado...
// en caso de que valorOpcional sea nil.

// Este operador es útil cuando se trabaja con valores opcionales...
// y se desea proporcionar un valor por defecto para evitar manejar...
// nil en ciertas circunstancias.
