import Foundation

// ---- Leccion 5: 29 Enumeraciones ----

// Es una estructura que trabaja con diferentes...
// valores relacionados de manera segura

// para definir una enumeracion, ...
// utilizaremos la palabra reservada "enum" ...
// seguida del nombre y abrimos llaves

enum PersonalData {
    // dentro de las llaves escriviremos ...
    // el nombres de los valores relacionados,
    // antrponiendo la palabra reservada case
    case nombre
    case apellido
    case edad

    // se puede colo car tambien las siguiente manera:
   // case nombre, apellido, edad
}


// De esta manera hemos organizado varios valores diferente...
// de un usuario, para llamarla lo aremos de la suiente manera:
// Podemos crear otra variable que son los datos que esta...
// introduciendo el usuario

var currenData: PersonalData = .nombre
var input = "Pedro"
// para tener relacionado lo que el usuario...
// introduce con el tipo de dato
currenData = .edad
input = "58" 

// Enumeraciones con valores asociador

enum ComplexPersonalData {
    // A un "case" de un "enum", podemos asociar tipos de dato que no tiene que se iguales
    // para asociar valores a cada uno de los casos escrivimos entre parentesis...
    // El tipo de dato,  
    case name(String)
    case surname(String, String)
    case address(String, Int)
    case phone(Int)
}
// tubieromos una variable:
var complexPersonalData:ComplexPersonalData = .name("Pedro")
complexPersonalData = .address("calle tutro", 4)

// Enumeraciones con el mismo tipo de valor
// para defin el nombre por defecto para todo los "case"
// lo que aremos acontinuacion del nombre...
//  los dos puntos y define el tipo de dato
enum RawPersonalData: String {
     case name
    case surname
    case address
    case phone
}
// cuando escribimos punto y llamamos a "raeValue",
// lo que estamos llamando es a su valor en bruto
RawPersonalData.name.rawValue

//si queremos modificar el tipo de dato de "String" a "Int"
// si llamamos alprimer caso el resultado ya no seria un string si no Int (0)
// dado que swift a sociado el valor :

enum RawPersonalData2: Int {
     case name // 0
    case surname// 1
    case address// 2
    case phone// 3
}

// S2i el tipo de valor que tenemos es un "String",...
// y no quiero que se muestre el nombre del valor,...
// en este caso es, por ejemplo name, le agregaremos...
// el signo igual con el nombre que queremos mostrar entre comillas
enum RawPersonalData3: String {
     case name = "Nombre"
    case surname = "Apellidos"
    case address = "Dirección"
    case phone = "telefono"
}

// Si ejecutamos "RawPersonalData.phone.raeValue",...
// el resultado sera una cadena de texto...
// con el nombre que hemos puesto entre comillas
