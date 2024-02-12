import Foundation

// ------ Lención 4: 20, Concadenación y interpolación de String ------
// URL: https://swift-book-es.vercel.app/guia-del-lenguaje/cadenas-y-caracteres

// Concadenar:
// Concadenar es unir, en este caso cadenas de texto
// medianre el signo "+"

/*
 let myStryng = "Hola" + " " + "Como" + " " + "estas?"

  quieres concadenar mas cadena de texto ...
  se pude hacer tambien de la siguiente manera:

 myStryng += "esto es una prueba ..."

  este codigo da un error,
  devido que hemos puesto ...
  una constante en el momento que la definimos no se puede modificar.
  lo que tendremos que hacer es cambiar la contante por una variable
*/

// Ejemplo:

var myStryng = "Hola" + " " + "Como" + " " + "estas ? ..."
myStryng += "\nesto es una prueba ..."
myStryng += "\nde concadenacion definiendo la variable"

// al definir la variable con el operador "+=" ...
// el valor String es acumulativo,
// de hay que amedida que la definimos ...
// va repitiendo su valor inicial ...
// y suma las cadena que vamos agregando

// concadenar constantes
let name = "Pedro"
let country = "España"
let myPersonalInfo = "Mi nombre es " + name + " y vivo en " + country

// Interpolación
// Es una forma de crar una nueba cadena, utilizando otras variables
// o constantes, ejemplo:

// Para interpolar nos colocaremos ...
// detro de nuestra cadena de texto ...
// colocaremos barra inclinada inversa seguido de dos parentesis "\()"...
// dentro de los parentesis colocaremos nuestras constante donde corresponda

let myPersonalInfoWithInterpolation = "Mi nombre es \(name) y vivo en \(country)"

