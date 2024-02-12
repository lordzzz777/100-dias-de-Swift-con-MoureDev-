import Foundation

// ---- Leccion 5: 28 Tuplas ----

// Una tupla es un conjunto ordenado de valores...
// que pueden ser de diferentes tipos. Se utilizan...
// para agrupar múltiples valores en un solo valor compuesto.
// Permiten combinar varios valores en un solo conjunto.
// Pueden ser útiles en situaciones donde se necesita...
// pasar o devolver múltiples valores desde una función ...
// sin tener que definir una estructura o clase para encapsular esos valores.

              //nombre,   apellido, edad
var persona  = ("Manoli", "Mendez",  38)

// Para acceder a valores:
persona.1

// almacenar estos valores en variaples independientes

var (nombre, apellido, edad) = persona
nombre


// variable de tupla nombrada
var personaNamedTuples = (nombe:"Manoli", apellido: "Mendez", edad: 38)
personaNamedTuples.edad
