import Foundation



// ---- Repaso: Colecciones ----



// un diccionario es una colección no ordenada...
// de elementos en la que cada valor está asociado...
// con una clave única. En lugar de acceder a los...
// elementos por un índice, como se hace en un array,...
// en un diccionario se accede a los valores mediante sus claves.



// *********** Crear un diccionario: ***********


// La creación de un diccionario en Swift implica...
// definir y asignar valores a una estructura de...
// datos que asocia claves con valores.
// Vamos a desglosar la declaración y creación de un diccionario en Swift:


// ---- Sintaxis básica para crear un diccionario: ----


// Crear un diccionario de cadenas clave y valores enteros
var scores = ["Juan": 95, "María": 89, "Carlos": 78]

// En este ejemplo, scores es un diccionario que tiene...
// nombres ("Juan", "María", "Carlos") como claves...
// y puntuaciones (95, 89, 78) como valores asociados.
// La sintaxis utiliza corchetes ([]) y dos puntos...
// (:) para asignar valores a claves específicas.


// ---- Crear un diccionario vacío y agregar elementos: ----

// También puedes crear un diccionario vacío y luego agregar elementos
var emptyDictionary: [String: Int] = [:]

// Agregar elementos al diccionario vacío
emptyDictionary["Pedro"] = 85
emptyDictionary["Ana"] = 92


// En este ejemplo, emptyDictionary se declara como...
// un diccionario vacío con claves de tipo String...
// y valores de tipo Int. Luego, se agregan elementos...
// a este diccionario asignando valores a claves específicas.



// ---- Acceder a valores mediante claves: ----


let juanScore = scores["Juan"] // Acceder al valor asociado con la clave "Juan"
print(juanScore) // Imprime: Optional(95)

// Aquí, juanScore contiene el valor asociado con la clave "Juan".
// Ten en cuenta que la recuperación de un valor de un diccionario...
// devuelve un tipo opcional (Optional). Esto se debe a que la clave...
// puede no existir en el diccionario, por lo que la recuperación...
// puede devolver nil si la clave no está presente.

// En resumen, "Crear un diccionario" en Swift implica la definición...
// y asignación de valores a una estructura de datos que asocia claves...
// con valores únicos. La sintaxis es relativamente simple y permite...
// la creación de diccionarios con diferentes tipos de claves y valores.



// *********** Acceder a valores mediante claves: ***********


// Acceder a valores mediante claves significa recuperar el valor...
// asociado con una clave específica en un diccionario.
// En Swift, los diccionarios son colecciones de pares...
// clave-valor, donde cada valor se asocia con una clave única.

// Cuando creas un diccionario, puedes asignar un valor a cada...
// clave, y luego, cuando necesitas acceder a ese valor,...
// utilizas la clave correspondiente. En el ejemplo que proporcioné:

let juanScore = scores["Juan"] // Acceder al valor asociado con la clave "Juan"
print(juanScore) // Imprime: Optional(95)

// Aquí, scores es un diccionario que asocia nombres...
// ("Juan", "María", etc.) con puntajes (95, 92, etc.).
// Al acceder a scores["Juan"], obtienes el valor...
// asociado con la clave "Juan", que es 95.
// Ten en cuenta que la expresión scores["Juan"]...
// devuelve un valor opcional (Optional(95))...
// porque la clave podría no existir en el diccionario.

// Si estás seguro de que la clave existe y no estará...
// ausente, puedes desempaquetar...
// el valor opcional de la siguiente manera:

if let juanScore = scores["Juan"] {
    print("El puntaje de Juan es \(juanScore)")
} else {
    print("La clave 'Juan' no está presente en el diccionario")
}

// En este caso, el bloque if let comprueba si la clave "Juan"...
// existe en el diccionario y, si es así, desempaqueta el valor...
// asociado (95) y lo utiliza dentro del bloque.
// Si la clave no está presente, se ejecuta el bloque else.

// Este enfoque de acceso basado en claves es fundamental...
// para trabajar con diccionarios y es parte de la flexibilidad...
// y eficiencia que ofrecen al proporcionar un medio rápido...
// de búsqueda y recuperación de datos asociados con claves específicas.




// *********** Modificar valores y agregar nuevos elementos: ***********

// Cuando hablo de "Modificar valores y agregar nuevos elementos"...
// en el contexto de diccionarios en Swift, me refiero a la...
// capacidad de cambiar el valor asociado con una clave...
// existente o agregar un nuevo par clave-valor al diccionario.
// Aquí hay una explicación más detallada:

// Modificar un valor existente:
// Puedes modificar el valor asociado con una clave...
// específica reasignando un nuevo valor a esa clave.
// En el ejemplo anterior:

scores["María"] = 92

// Aquí, estamos modificando el valor asociado con la clave "María"...
// y cambiándolo a 92. Si "María" ya tenía un valor en el diccionario,...
// esta acción lo actualiza.

// Agregar un nuevo elemento:
// Puedes agregar un nuevo par clave-valor al diccionario simplemente...
// asignando un valor a una nueva clave. Por ejemplo:

scores["Pedro"] = 85

// En este caso, estamos agregando un nuevo elemento al diccionario...
// con la clave "Pedro" y el valor 85. Si la clave "Pedro"...
// ya existía en el diccionario, este paso modificará el valor...
// asociado con esa clave. Si la clave no existía,...
// se creará un nuevo par clave-valor.

// Estas operaciones son comunes cuando estás trabajando...
// con datos dinámicos y necesitas actualizar o agregar...
// información a tu diccionario. Los diccionarios en Swift...
// son flexibles y permiten una fácil manipulación de datos...
// mediante el uso de claves únicas para identificar...
// y acceder a valores asociados.



// *********** Iterar sobre un diccionario: ***********
// terar sobre un diccionario significa recorrer cada...
// elemento del diccionario y realizar alguna operación...
// en cada iteración. En el contexto de Swift,...
// esto generalmente se hace utilizando un bucle...
// for-in para recorrer los pares clave-valor del diccionario.

// Cuando iteras sobre un diccionario, el bucle for-in...
// te permite trabajar con cada par clave-valor de manera...
// separada. Aquí hay un ejemplo de cómo se realiza...
// la iteración sobre un diccionario:

var scores = ["Juan": 95, "María": 92, "Carlos": 78]

for (name, score) in scores {
    print("\(name): \(score)")
}

// En este ejemplo, el bucle for-in se utiliza para recorrer...
// el diccionario scores. En cada iteración, la variable name...
// tomará el valor de la clave y la variable score tomará...
// el valor asociado a esa clave. Dentro del bloque del bucle,...
// puedes realizar cualquier operación que desees con estos valores.

// La salida de este ejemplo sería:

// Juan: 95
// María: 92
// Carlos: 78

// Este tipo de iteración es especialmente útil cuando necesitas...
// realizar alguna operación en cada elemento de un diccionario,...
// como imprimir valores, realizar cálculos, o realizar cualquier...
// otra tarea específica para cada par clave-valor.

// Ten en cuenta que, aunque en este ejemplo se utilizó un bucle...
// for-in, también puedes utilizar otros métodos y funciones...
// proporcionados por Swift para trabajar con diccionarios,...
// como forEach, que es otro enfoque para realizar operaciones...
// en cada elemento de un diccionario.




// *********** Métodos comunes de diccionarios: ***********

// Cuando me refiero a "Métodos comunes de diccionarios,"...
// estoy hablando de algunas operaciones y funciones que...
// son frecuentemente utilizadas para manipular y trabajar...
// con diccionarios en Swift. Aquí hay una explicación...
// más detallada de los puntos mencionados:


// Obtener todas las claves y valores como arrays
let names = Array(scores.keys)
let scoreValues = Array(scores.values)

// scores.keys: Devuelve un iterable con las claves del diccionario.
// scores.values: Devuelve un iterable con los valores del diccionario.
// Array(...): Convierte las claves y valores a arrays si es necesario.


// Eliminar un elemento por clave
scores["Carlos"] = nil
// Esto elimina el elemento cuya clave es "Carlos" del diccionario scores.


// Comprobar si una clave existe en el diccionario
if let score = scores["Pedro"] {
    print("Score de Pedro: \(score)")
} else {
    print("Pedro no encontrado en el diccionario")
}

// Utilizamos el operador opcional (if let) para verificar...
// si existe una entrada con la clave "Pedro"...
// en el diccionario scores.
// Si existe, imprimimos el puntaje; de lo contrario,...
// mostramos un mensaje indicando que "Pedro"...
// no se encuentra en el diccionario.

// Estos son solo algunos ejemplos de las operaciones que...
// puedes realizar con diccionarios en Swift.
// La idea es mostrarte cómo puedes realizar tareas comunes,...
// como obtener claves y valores, eliminar elementos y verificar...
// la existencia de claves. Swift proporciona una variedad...
// de métodos y funciones más avanzados para trabajar...
// con diccionarios, y puedes explorarlos en la documentación...
// oficial de Swift sobre diccionarios.
