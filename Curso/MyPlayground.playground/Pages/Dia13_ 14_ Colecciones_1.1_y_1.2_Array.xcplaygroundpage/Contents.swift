import Foundation


// ---- Repaso: Colecciones ----


// tipos de datos que pueden contener múltiples valores.

// Las colecciones en Swift incluyen:





// *** ----  Arrays:  ---- ***


// Una colección ordenada de elementos del mismo tipo.
// Puedes acceder a los elementos mediante un índice.



// ---- Declaración y inicialización de un Array: ----

// se refiere al proceso de crear un Array en Swift,...
// es decir, darle un nombre, especificar su tipo...
// y asignarle algunos valores iniciales. Aquí tienes...
// una explicación más detallada:

// Declaración de un Array de enteros
var numbers = [1, 2, 3, 4, 5]

// En este ejemplo:

// var significa que estamos declarando una variable mutable,...
// es decir, su valor puede cambiar después de la inicialización.

// numbers es el nombre que le estamos dando al Array.
// Puedes elegir cualquier nombre descriptivo...
// que tenga sentido en el contexto de tu programa.

// = es el operador de asignación.
// Estamos asignando un valor al Array.

// [1, 2, 3, 4, 5] son los valores iniciales del Array.

// Estos valores están entre corchetes y separados por comas.
// En este caso, estamos creando un Array de enteros con los valores del 1 al 5.

// Este Array ahora puede ser utilizado en tu programa.
// Puedes acceder a los elementos del Array mediante índices,...
// agregar nuevos elementos, eliminar elementos, entre otras operaciones.

// También puedes declarar un Array vacío y luego agregar elementos más tarde:

// Declaración de un Array de strings
var fruits = ["apple", "orange", "banana"]

// Declaración de un Array vacío de tipo específico
var emptyArray: [Double] = []

// En este caso, hemos declarado un Array llamado...
// emptyArray que puede contener valores de tipo Double,...
// y luego hemos agregado dos valores Double a este Array.




// ---- Acceso a elementos: ----

// En Swift, los Arrays son colecciones ordenadas,...
// lo que significa que los elementos dentro...
// de un Array tienen un orden específico,...
// y puedes acceder a cada elemento mediante...
// su posición o índice. Aquí hay una explicación más detallada:

// Declaración de un Array de strings
var fruits = ["apple", "orange", "banana"]

// Acceso al primer elemento
let firstFruit = fruits[0]
print(firstFruit) // Imprime: "apple"

// Acceso al segundo elemento
let secondFruit = fruits[1]
print(secondFruit) // Imprime: "orange"

// Acceso al último elemento
let lastFruit = fruits[fruits.count - 1]
print(lastFruit) // Imprime: "banana"

// En el ejemplo anterior:

// El índice 0 se utiliza para acceder al primer...
// elemento del Array ("apple").

// El índice 1 se utiliza para acceder al segundo...
// elemento del Array ("orange").

// El índice fruits.count - 1 se utiliza para acceder...
// al último elemento del Array ("banana"). El uso de...
// fruits.count - 1 es necesario porque los índices en Swift...
// comienzan desde 0, por lo que el último elemento...
// está en la posición fruits.count - 1.

// Es importante tener en cuenta que si intentas...
// acceder a un índice que está fuera del rango...
// del Array, se producirá un error en tiempo de ejecución.
// Por ejemplo, si intentas acceder a fruits[3]...
// en el ejemplo anterior, obtendrías un error...
// ya que el índice 3 está fuera del rango válido para el Array.

// El acceso a elementos en Swift te permite obtener...
// y manipular datos dentro de un Array según su posición,...
// lo que es fundamental para trabajar con colecciones ordenadas de datos.

// Mas ejemplos:

// Acceso al primer elemento
let firstNumber = numbers[0]

// Acceso al último elemento
let lastFruit2 = fruits.last

// Cambiar el valor de un elemento
numbers[2] = 10




// ---- Métodos comunes de Arrays: ----

// append(_:) - Agregar un elemento al final del Array:

var fruits = ["apple", "orange", "banana"]
fruits.append("grape")
print(fruits)  // Imprime: ["apple", "orange", "banana", "grape"]

// Este método agrega un nuevo elemento al final del Array.

// insert(_:at:) - Insertar un elemento en una posición específica:
var fruits2 = ["apple", "orange", "banana"]
fruits2.insert("kiwi", at: 1)
print(fruits2)  // Imprime: ["apple", "kiwi", "orange", "banana"]

// Este método permite insertar un nuevo elemento...
// en una posición específica del Array.

// remove(at:) - Eliminar un elemento por índice:
var fruits3 = ["apple", "orange", "banana"]
fruits3.remove(at: 1)
print(fruits3)  // Imprime: ["apple", "banana"]

// Elimina el elemento en la posición dada del Array.

// firstIndex(of:) y remove(at:) - Eliminar un elemento por valor:
var fruits4 = ["apple", "orange", "banana"]
if let index = fruits4.firstIndex(of: "orange") {
    fruits4.remove(at: index)
}
print(fruits4)  // Imprime: ["apple", "banana"]

// Encuentra la primera ocurrencia del valor especificado y lo elimina del Array.

// . Recorrer un Array:
var fruits5 = ["apple", "orange", "banana"]
for fruit5 in fruits5 {
    print(fruit5)
}
// Imprime:
// apple
// orange
// banana

// Un bucle for-in (este bucle lo veremos...
// mas en profundidad mas adelante)es una forma común...
// de recorrer todos los elementos de un Array.

// count - Obtener la cantidad de elementos en el Array:
var numbers = [1, 2, 3, 4, 5]
let count = numbers.count
print(count)  // Imprime: 5

// Proporciona el número de elementos en el Array.





// ---- Crear un Array mediante repetición: ----

// es una característica que te permite generar un Array...
// con elementos duplicados o con un valor específico...
// repetido varias veces. Se utiliza el inicializador...
// Array(repeating:count:) para lograr esto.

// Aquí tienes un ejemplo para ilustrar cómo funciona:

// Crear un Array con cinco elementos iguales
let repeatedValues = Array(repeating: 0, count: 5)
print(repeatedValues)

// En este ejemplo, estamos utilizando el inicializador...
// Array(repeating:count:) para crear un nuevo Array...
// llamado repeatedValues. Este Array contendrá...
// el valor 0 repetido cinco veces.

// La sintaxis del inicializador es la siguiente:

// Array(repeating: valor, count: cantidad)

// valor: Es el elemento que se repetirá en el Array.

// cantidad: Es el número de veces que...
// se repetirá el elemento en el Array.
// En el ejemplo anterior, 0 es el valor que se repetirá,...
// y 5 es la cantidad de veces que se repetirá,...
// por lo que el resultado impreso será:

// [0, 0, 0, 0, 0]

// Este enfoque es útil cuando necesitas...
// crear un Array con elementos idénticos...
// y evita que tengas que escribir manualmente...
// cada elemento en la declaración del Array,...
// ahorrándote tiempo y código.
// Puedes adaptar la cantidad y el valor según tus necesidades.



// ---- Filtrar elementos: ----

// Filtrar elementos en Swift, cuando trabajas con Arrays,...
// significa seleccionar solo aquellos elementos que cumplen....
// con cierta condición. Vamos a desglosar el ejemplo que proporcioné:

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Filtrar los números pares
let evenNumbers = numbers.filter { $0 % 2 == 0 }
print(evenNumbers) // Imprime: [2, 4, 6, 8, 10]

// En este código:

// numbers es un Array que contiene números del 1 al 10.

// filter es un método de Array en Swift que toma...
// una clausura como argumento.
// La clausura describe la condición que deben cumplir...
// los elementos para ser incluidos en el nuevo Array.

// { $0 % 2 == 0 } es una clausura que verifica si un número...
// ($0) es divisible por 2 sin dejar un residuo.
// En otras palabras, esta clausura selecciona solo los números pares.

// evenNumbers es un nuevo Array que contiene solo los elementos...
// de numbers que cumplen con la condición especificada en la clausura.

// print(evenNumbers) imprime el resultado,...
// que en este caso son los números pares del Array original.

// En resumen, el código está filtrando los números originales...
// y creando un nuevo Array llamado evenNumbers que solo contiene...
// los números pares. Puedes ajustar la clausura en la función...
// filter para aplicar diferentes condiciones según tus necesidades.
// Esto es parte de la flexibilidad y potencia que Swift...
// proporciona al trabajar con colecciones de datos.


// ---- Filtrar Mapear elementos a nuevos valores: ----



// Mapear, en este contexto, significa aplicar una...
// transformación a cada elemento de un Array y crear...
// un nuevo Array con los resultados de esas transformaciones.
// En Swift, el método map es utilizado para realizar este proceso.
// Aquí tienes una explicación más detallada:

// Supongamos que tienes un Array de números...
// y deseas duplicar cada número en ese Array.
// Puedes hacerlo utilizando el método map de la siguiente manera:

let numbers = [1, 2, 3, 4, 5]

// Utilizar el método map para duplicar cada número
let doubledNumbers = numbers.map { $0 * 2 }

// Resultado: doubledNumbers ahora contiene [2, 4, 6, 8, 10]

// En este ejemplo:

// numbers es tu Array original.

// map es un método que toma una clausura como argumento.
// La clausura especifica la transformación...
// que deseas aplicar a cada elemento del Array.

// { $0 * 2 } es una clausura abreviada que toma...
// un argumento ($0 representa cada elemento del Array)...
// y devuelve el resultado de multiplicarlo por 2.

// El resultado, doubledNumbers, es un nuevo Array...
// que contiene los resultados de aplicar la transformación...
// a cada elemento del Array original.

// Puedes adaptar la clausura de la función de mapeo para...
// realizar cualquier tipo de transformación que desees en...
// cada elemento del Array. Este es solo un...
// ejemplo simple para ilustrar el concepto.

// El mapeo es una forma poderosa y concisa de transformar...
// los elementos de un Array, y se utiliza comúnmente en...
// programación funcional para operaciones de transformación de datos.




// ---- Filtrar Ordenar elementos: ----


// Ordenar elementos en un array es una operación común...
// y útil en programación. La idea es organizar los elementos...
// del array de acuerdo con un cierto criterio, ya sea de forma...
// ascendente o descendente. En Swift,...
// esto se realiza utilizando el método sorted.

// Vamos a analizar el ejemplo que proporcioné:

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Ordenar los números de forma descendente
let sortedNumbersDescending = numbers.sorted { $0 > $1 }
print(sortedNumbersDescending) // Imprime: [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]


// Aquí, numbers es un array de enteros del 1 al 10. Luego,...
// utilizamos el método sorted para ordenar estos números.
// La cláusula de cierre { $0 > $1 } define el criterio de ordenación.

// $0 y $1 son parámetros que representan...
// dos elementos del array que se están comparando.

// La expresión $0 > $1 significa que estamos...
// ordenando de forma descendente, es decir,...
// colocando los elementos mayores primero.

// Después de ejecutar esta línea de código,...
// sortedNumbersDescending contendrá el array...
// original ordenado de forma descendente,...
// y cuando se imprime, verás [10, 9, 8, 7, 6, 5, 4, 3, 2, 1].

// Si quisieras ordenar de forma ascendente,...
// simplemente cambiarías la expresión de ordenación a $0 < $1.
// En este caso, los elementos menores se colocarían primero.

let sortedNumbersAscending = numbers.sorted { $0 < $1 }
print(sortedNumbersAscending) // Imprime: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Este es solo un ejemplo de cómo puedes usar el método...
// sorted para ordenar elementos en Swift.
// Es una herramienta poderosa que te permite...
// personalizar cómo se deben comparar...
// los elementos durante el proceso de ordenación.


// ---- Reducir elementos a un solo valor: ----


// Reducir elementos a un solo valor es una operación...
// que toma una colección, como un Array, y combina...
// sus elementos para producir un único resultado.
// En Swift, esta operación se realiza utilizando...
// el método reduce. Este método toma dos parámetros:
// un valor inicial (o acumulador) y una clausura...
// que especifica cómo combinar los elementos de la colección.

// La firma del método reduce es la siguiente:

func reduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Element) throws -> Result) rethrows -> Result

// initialResult: El valor inicial que se utiliza como acumulador.

// nextPartialResult: Una clausura que combina el acumulador actual con cada
// elemento de la colección para producir un nuevo acumulador.

// Voy a mostrarte un ejemplo...
// con el Array de números que usamos anteriormente:

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Sumar todos los elementos del Array usando reduce
let sum = numbers.reduce(0) { (accumulator, number) in
    return accumulator + number
}

print(sum)  // Imprime: 55



// En este ejemplo, el valor inicial (initialResult) es 0,...
// y la clausura (nextPartialResult) especifica cómo...
// se combina el acumulador actual con cada elemento...
// del Array. La clausura toma dos parámetros:
// el acumulador actual (accumulator) y el siguiente...
// elemento del Array (number), y devuelve el nuevo valor del acumulador.

// En cada paso de la iteración,
// reduce suma el acumulador actual con el siguiente...
// número en el Array. Al final del proceso,...
// obtienes la suma total de todos los elementos del Array.
// Esta capacidad de reducir una colección a un solo valor...
// es poderosa y se puede utilizar para realizar diversas...
// operaciones, como encontrar el máximo, el mínimo,...
// la concatenación de elementos, entre otras.
// La flexibilidad de la clausura proporciona...
// un control completo sobre cómo se realiza la reducción.

