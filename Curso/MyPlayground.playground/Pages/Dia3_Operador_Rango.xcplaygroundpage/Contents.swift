import Foundation

// ---- Leccion 5: 30 Operador de rango ----

// te facilita el uso de los arreglos


var arregloEjemplo = [0,1,2,3,4,5,6,7,8,9]

// Operador de rango Doble lado / two-sided range operator
// los peradores de doble lado o "two-sided range operator"
// se representa dentro de coches en media de dos indices con tres puntos
// lo que le estomos diciendo que miremos des de el rango inferior
// que en este caso seria "1" y teminamos en el rango superior "3"
var subSetArreglo = arregloEjemplo[1...3]
var subSetArreglo2 = arregloEjemplo[1...9]

// si en entre los indices de rango...
//colocamos dos puntos y el simbolo de menor que..
// lo que le estamos diciendo es que...
//inicicia los valores des de el indice 1
// asta antes de llegar en este caso el indice 3
var subSetArreglo4 = arregloEjemplo[1..<3]


// Operador de rango lado unico/ one-sided range operator
var subSetArreglo5 = arregloEjemplo[...3]

// hay que darse cuenta que como no le estoy...
// dando un indice inicial del lado unico,
// mostrara desde el inicio asta el lado unico.
// si lo que queremos es dale un indice inicial...
// no el indice final, pasaria lo contrario
// memostrari dede el indice inicial asignado, asta el final del arreglo
var subSetArreglo6 = arregloEjemplo[4...]

// esta variable tiene un arreglo con un rango cerrado
var rangoCerrado = [1...5]

// se podria pensar que podriamo coger este rango cerrado
// y acceder a sus valores "rangoCerrado[2]", esto lanza un error
// que dice que nos salimos del rango,
// dado que en relidad solo tenemos un solo valor
// para acceder a su valores tendriamos que colocar "0"
rangoCerrado[0]
// pero si el rango cerrado queremos transfomarlo en un arreglo
// lo que podemos hacer es colocar la palabra reserbada Array
Array(rangoCerrado[0])
// esto lo podriamos almacena en una variable
// sub arreglo:
var subArreglo = Array(rangoCerrado[0])

// de esta manera podre acceder a sus indices
subArreglo[2]
