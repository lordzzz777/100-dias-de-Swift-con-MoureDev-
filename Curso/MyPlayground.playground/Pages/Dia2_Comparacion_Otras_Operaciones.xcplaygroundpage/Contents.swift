import Foundation

// ------ Lección 4: 21 Comparación y otras operaciones -----

// Comparación:
// En Swift, la comparación de cadenas (String) ...
// se puede realizar de varias maneras,
// utilizando diferentes métodos y operadores.
// Las formas más comunes de comparar cadenas en Swift son:

// Operadores de igualdad (== y !=):

let name1 = "Pedro"
let name2 = "Juan"
let name3 = "Pedro"

// Estas comparando el nobre "Pedro" y "Juan",
// y con el operedor "==" le estamos diciendo que si son iguales ...
// dado que no lo son lanza un false ....
name1 == name2

// al compara name1 y name3, y ver que subalor string
// es igual, lanza un true, que es verdadero
name1 == name3

// Operaciones de contenido
// Podemos comprobar si una cadena de texto contiene otra
let myContent = "Mi nombre es Pedro"

// Praa saber si esta cadena de texto tiene otra, ...
// acederemos a nuestra contante escribiremos un punto, ...
// buscaremos la operacion contains
// y entre parentesis, lo que tenemos que indicar ....
// es el nombre queremos comprobar si contiene
// Ejemplo:

myContent.contains(name1)

// comprobar si la cadena es bacia
// se realiza de la siguiente manera ...
// llaremos a nuestra contante  le asignaremos el operador "==" y detrar, dos comillas dobles,

let myEmptyString = ""

myEmptyString == ""

// tenemos otra forma para acceder a esta caracteristica
// de la siguiente manera

myEmptyString.isEmpty // tambien verificara si esta cadena esta bacia

// Operacion de recorrido
// Recorre caracter a caracter, el contenido de nuestro String
// crearemos un bucle con la palabra reserbada for

for valor in myContent{
    print(valor)
}

