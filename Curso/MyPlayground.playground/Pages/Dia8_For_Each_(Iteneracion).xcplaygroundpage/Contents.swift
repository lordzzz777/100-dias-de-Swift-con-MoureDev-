import Foundation


// ---- Leccion 9: 80 ForEach (Alternancia) ----

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

print("")
// Array
myArray.forEach { (myIn) in
    print(myIn)
}

print("")
// Dictionary
myDictionary.forEach { (key) in
    print(key.key)
}

print("")
// Set
mySet.forEach { (myInt) in
    print(myInt)
}
