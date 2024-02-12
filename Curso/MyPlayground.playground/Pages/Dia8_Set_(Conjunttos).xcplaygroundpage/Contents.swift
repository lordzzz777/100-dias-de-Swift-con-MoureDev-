import Foundation


// ---- Leccion 9: 76 Set (Conjuntos) ----


// Los set, sontambien llamados, mezclas o conjunto
// y son una especice de mezcla entre los array...
// y los diccionarios.
// Un set podremos añadir valores de un unico...
// tipo igual que los array, pero eso si estos valores
// no estaran ordenados igual que los diccionarios
// y ademas tendran una caracteristica basica e importantisima
// que los valores que esten incluido dentro del set o conjunto
// no podran estar repetidos, cosa que los array si que tienen
// y que los diccionarios no ya que no se puede repetir las claves
// en resumen,  los set no estaran ordenados y no podran...
// repetir valores. Eso si, tendran qeu pertenecer a un tipo concreto


var mySet = Set<String>()

// otro forma de definirlo:
// aprobechando esta forma lo podemos inicializar con valores
let mySet2: Set<String> = ["Juan", "Fernadez","27"]


// como insertar valores de uno en uno
// trabajaremos con el primero que esta vacio
mySet.insert("Juan")
mySet.insert("Fernadez")
mySet.insert("27")
mySet.insert("Juan")
print(mySet)

// El aceso en los set, se limita a saber si...
// deverdad existe el elemento en el set...
// para ello tendreo que crear una condicion, y preguntar
// si tiene el elemento requerido

if mySet.contains("Fernadez"){
    print("si que existe")
}else {
    print("no exisite")
}

// Modificacion de un set, sera eliminando alguno de sus valores

mySet.remove("27")
print(mySet)

// acceso y modificaciones en base al indice
// para obtener el indice de un elemento,
// llamamos a nuestro set, tras de el punto...
// colocamos la palabra reservada "firstIndex"
// y entre parentesis el valor
// para eliminar un elemento de set por su indice
if let index = mySet.firstIndex(of: "Juan"){
    mySet.remove(at: index)
}
print(mySet)


// Como iterar Set, como recorrerlos
// para recorrer valores lo podemos iterar
// con un bucle "for",
mySet.insert("Juan")
mySet.insert("Fernadez")
mySet.insert("27")
mySet.insert("Hola mundo")

for myElement in mySet {
    print(myElement)
}


// Operador de conjuntos,

let myIntSet: Set = [1,2,3,4,5]
let myIntSet2: Set = [0,2,3,6,7]

// Operacion de interseccion, es la creacion de un nuevo
// conjunto atendiendo solo a los valores comunes entre
// ambos Set.

print(myIntSet.intersection(myIntSet2))

// diferencia simerica, se encarga de crear un
// nuevo conjunto con valores de ambos set, pero
// que no sean comunes.

print(myIntSet.symmetricDifference(myIntSet2))

// la union, crea un nuevo conjunto con todo los valores
// de ambos conjuntos, pero atendiendo alas caracteristicas
// principales de los set, que no se van a existir los repetidos

print(myIntSet.union(myIntSet2))

// la resta, lo que vamos a ver como tenemos un resultado de un set
// con todo los valores del primero que examinamos,
// pero eliminando los valores que tengan en común con el segundo

print(myIntSet.subtracting(myIntSet2))
