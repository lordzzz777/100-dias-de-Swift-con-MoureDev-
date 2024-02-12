import Foundation


// ---- Leccion 9: 81 Otras operaciones para colecciones ----


var myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

let mySet: Set = [5,8,1,0,3,9,7,2,4,6]

// Operacion Count, que como su nombre indica es
// para contar cuantos elementos tenemos, en cada colección

print(myArray.count)
print(myDictionary.count)
print(mySet.count)

// Operacion isEmpty, sirve para saber si...
// nuestra colección esta vacia o no
// si por ejemplo dejaramos el array "myArray = []" bacia el resultado es de un "true"
// y dos "false"

print(myArray.isEmpty)
print(myDictionary.isEmpty)
print(mySet.isEmpty)

// Operacion reversed, que esta relacionada con
// los algoritmo de relación, lo que va hacer
// es imvertir el orden de nuestra coleccion

print(myArray.reversed() as [Int] )
print(myDictionary.reversed())
print(mySet.reversed())

// Operadores de tipo first o last, nos muestra
// el primer elemento y el ultimo
// tiene un valor obcional, por lo que tendremos...
// que desenmpaquetas o compribar que tiene valoe
// "last", no lo tenemos ni en el diccionario y set
print(myArray.first!)
print(myDictionary.first != nil)
// print(mySet.last! )

// Operaciones drop o pop
// en el caso de pop en el array solo tendremos poplast
// en los diccionrios y los set solo tenemos los popFirst

print(myArray.popLast())
print(myDictionary.popFirst())
print(mySet.popFirst())
