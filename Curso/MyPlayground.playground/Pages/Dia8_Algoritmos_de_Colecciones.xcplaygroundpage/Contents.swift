import Foundation


// ---- Leccion 9: 77 Algoritmos de Colecciones ----

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

// Sort, es un algoritmo de Ordenacion de los valores que compone
// a una de estas colecciones
//myDictionary.sort() y mySet.sort(), no estan soportada
//print(myArray)
//myArray.sort()
//print(myArray)

// para realizar una operacion mucho mas concreta,
// sin atender a su orden logico

//myArray.sort { (intA, intB) -> Bool in
//    return intA > intB
//}
//print(myArray)


// ---- 77 Sorted (Ordenación) ----

// ¿Cual es la diferencia entre la operación sort
// y la operación sorted?
// mientra que sort ordena la operación que estabamos ejecutando
// por el contrario sorted dejar sin modificar la colección
// retornando una ya ordenada

print(myArray)
var myArraySorted = myArray.sorted()
print(myArray)
print(myArraySorted)

// si con sort podiamos realizar una ordenacion custon
// con sorted podemos hacer lo mismo

myArraySorted = myArray.sorted {(intA, intB) -> Bool in
    return intA > intB
}

print(myArraySorted)

// ordenacion con sorted de dictionary

let mySortedDictionary = myDictionary.sorted { (ElementA, ElementB) -> Bool in
    return ElementA.key < ElementB.key
}
print(mySortedDictionary)
// hemos ordenado nuestro diccionario combirtiendolo en un array, o mejor dicho en una tupla

// ordenacion con sorted de set
var mySortedSet = mySet.sorted()
print(mySortedSet)

mySortedSet = mySet.sorted { (elementA, elementB) -> Bool in
    return elementA > elementB
}
print(mySortedSet)
