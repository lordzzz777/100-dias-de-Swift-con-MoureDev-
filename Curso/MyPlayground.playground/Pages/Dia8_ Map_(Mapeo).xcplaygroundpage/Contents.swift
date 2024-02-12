import Foundation


// ---- Leccion 9: 79 Map (Mapeo) ----


// Con un algoricmo de mapeo es transformar
// los valores de una coleccion en otra...
// coleccion del mismo tipo o de diferente tipo
// devemos modificar el algoritmo map siempre que
// querramos modificar los valores de una colección
// siguiendo un mismo criterio


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

// si queremos sumar, por ejemplo 10 a nuestro array
// tendremos que hacer lo siguiente:

let myMapArray =  myArray.map { (myInt) -> Int in
    return myInt + 10
}
print(myMapArray)

let myStringMapArray =  myArray.map { (myInt) -> String in
    return "Este es el numero \( myInt)"
}
print(myStringMapArray)

// Mapeado en un diccionario

let myMapDictinaryInt = myDictionary.map { (myKey) -> Int in
    return myKey.key // solo nuestra clave del dicionrio
    // nos devulve un array de entereos
    // creado a partir de nuestra key del diccionario
}
print(myMapDictinaryInt )

// Operacion Map en set

let myMapSetString = mySet.map { (myInt) -> String in
    return "el numero: \(myInt)" // el valor que da es un array de string
}
print(myMapSetString)

