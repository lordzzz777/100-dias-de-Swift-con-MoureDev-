import Foundation

// ---- Leccion 5: 25, 26 y 27 Colecciones ----
// Una coleccion sirve para almacenar una recopilación
// un conjunto de valores, para depues poder trabajar con ellos
//Tenemos tres grandes tipos de colecciones:


// ----- Array o arreglos ------,

// que son colecciones ordenadas...
// para crea un "Array" lo Ecribiremos de la siguiente forma...
// escribiremos "Array < tipo de dato > () que queremos guardar ...
// tambien podemos definir el tipo de dato entre corchetes...
// "Array [tipo dato]()"

// Arreglo mutable
var arregloNumero = [1,2,3]

// arreglo inmutable
let arregloNumeroInmute = [3,2,1]

// para ver un valor en especifico dentro del arreglo
// accederemos a su posicion o index:
// hay que tener encuenta que el indice de un Array o ...
// arregle siempre empieza en cero
//           Indice: 0  1  2
//  arregloNumero = [1, 2, 3]

// por ejemplo para acceder al dato Int "2" su posicion seria la "1"
print(arregloNumero[1])

// La ventaja de los arreglos mutables es que ...
// podemos seguir añadiendo valores, atraves de la funcion append
arregloNumero.append(5)
print(arregloNumero)

// si queremos insertar otro valor en la posicion que queramos...
//por ejemplo "arregloNumero.insert(valor ..., at: Indice ...)"
arregloNumero.insert(4, at: 3)
print(arregloNumero)

// Para eliminar valores buscaremos funcion remove:

// removeLast: elimina el ultimo valor
arregloNumero.removeLast()
print(arregloNumero)

// intremove: elimina el valor de una posicion especifica
arregloNumero.remove(at:3)
print(arregloNumero)

// removeAll: elimina todo los valores
arregloNumero.removeAll()
print(arregloNumero)

// esto nos lleva a pensar que podemos hacer, arreglos vacios
// ejemplo ... tras el nombre de la variable le tenemos que expecificar
// implicitamente el tipo de valor ...
var arregloVacio:[Int] = []
print(arregloVacio)


// ----- Los diccionarios ------,

// Se almacena una serie de datos clave valor,...
// esto quiere decir que para aceder al valor almacenado ...
// tendran que poseer una clave identifica ese valor ...
// las claves en un diccionario es unica, no se podrá asociar ...
// dos valores a una misma clave ...
// para definir un diccionario "Diccionary<clave:tipodato>()"
// tambien se puede hacer con corchetes "[clave:tipode datos]()"

//Sintaxis forma clasica
let myClassicDictionary = Dictionary<Int, String>()

//Sintaxis forma actual
let myModermDictionary = [Int: String]()

// Añadir datos a un diccionario, ...
// dentro de corchete tras escribir...
// clave valor le pondremos una coma para añadir otra clave valor
//ejemplo:
var myDictionay = [Int: String]()
myDictionay = [001: "Manolo", 002: "Paco"]

// --- NOTA ---
// Siempre que inicializamos el dicionario seguido del signo igual
// lo estamos inicializando de cero...
// por lo tanto los primeros datos se pierde quedando los ultimos
//
// myDictionay = [001: "Manolo", 002: "Paco"]
// myDictionay = [004: "Man", 005: "Helena"]
// el resultado seria "[005: "Marta", 006: "Helena"]",...
// "[001: "Manolo", 002: "Paco"], se pierde



// Añadir un solo dato, lo que aremos sera...
// acceder a nuestro diccionario,
// tras el nombre ponemos entre corchetes la nueva clave ...
// el signo igual y como en este caso el volor es String ...
// lo colocaremos entre comilla dobles, ejemplo:
myDictionay[003] = "Pedro"
myDictionay[004] = "Marta"
myDictionay[005] = "Helena"

// Hay que tner encuenta una serie de reglas...
// en el momento que definimos un tipo de colección ...
// le tenemos que dar el tipo de dato que bamos a guardar...

// Como acceder a los valores almacenados
// maremos al nombre del diccionario...
// y escribir entre corchetes el id
myDictionay[003]

// recuerda que el valor es unico por lo que...
// al acceder al dicionario y...
// ponerle otro valor el primero se pierde
myDictionay[004] = "Marta Santiago"
myDictionay[004]

// otra forma de actualizar valores (Forma clasica)
// seria detras de nombre del diccionario colocamos un punto
// y la palara resebada updateValue, ejemplo:
myDictionay.updateValue("Marta", forKey: 004)

// Como borrar datos, tenemos dos formas de forma clasica y actual

//forma clasica:
myDictionay.removeValue(forKey: 004)
myDictionay[004]

//marera actual
myDictionay[003] = nil
myDictionay[003]



// ----- Los Set ------,

// nos sevira para almacenar una serie de valores no ordenado
// Estos valores deven de ser unicos, no se podran repetir...
// Para introducir un set escribiremos "Set <tipo de dato>()"...

