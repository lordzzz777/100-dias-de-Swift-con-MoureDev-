import Foundation

// ---- Leccion 5: 31 y 34  Estructuras de control ----

// Estruntura "if" nos sevira para comprobar
// si de verdad se esta cumpliendo...
// un condicion o varias condiciones
// para complementar la estructura "if",...
// tenemos varios elemento el "else" y "else if"
// el "else", sirve par que encaso...
// que no se cumpla la condicion de "if" o en los "else if",...
// ejecutes lo que tiene dentro de las llaves del "else"
// el "else if" sirve para ejecutar...
// una nueva comprobación si el "if" inicial no se cumple

var edad = 17
var dinero = 200
var sexoEmenino = false

if edad >= 18 {
    
    // se preguntarle si es mayo o igual a 18,
    // con lleva a que es falso y el código no se va a ejecutar
    
    print("Se puede entrar")
    
} else {
    
    // en caso de que el "if", no se a verdadero
    // se ejecuta el "else"
    print("No puede entrar")
    
}

// podemos tambien incluir un operador lógoco

if edad >= 18 || dinero > 100 {
    // al ser una de las dos verdadera atraves del operador lógico
    // se va a ejecutar esta parte del codigo
    print("Se puede entrar")
    
} else {
    
    print("No puede entrar")
    
}

if edad >= 18 || dinero > 100  &&  sexoEmenino{
    // al ser una de las dos verdadera atraves del operador lógico
    // se va a ejecutar esta parte del codigo
    print("Se puede entrar")
} else {
    print("No puede entrar")
}

// se puede colo car los parentesis para ir de dentro haci fuera
//    false          true                false
if (edad >= 18 || dinero > 100 ) && (sexoEmenino){
    // al ser una de las dos verdadera atraves del operador lógico
    // se va a ejecutar esta parte del codigo
    print("Se puede entrar")
} else {
    print("No puede entrar")
}

//Un "if" anidados, es un "if ", dentro de otro "if"
// ejemplo de if anidados:
if edad >= 18 {
    
    print("Se puede entrar")
    if  dinero > 100 {
        print("tienes dinero")
        
        if sexoEmenino{
            print("")
        }
    }
    
} else {
    
    print("No puede entrar")
    
}
    
    
    //-------** Nota **-------
    
    // Para que el codigo no se vea tan lago
    // Xcode tiene una funcion para contraer el codigo.
    // En la barra superior de tu mac, junto a la manzana tiene un menú
    // Xcode/seting/Text Editing/ Display / ...
    // marcamos con un check en Code folding ribbon
    //------------------------
    
    
    
    
    // tendremos dos pequeñas variantes de la estructura de control "if"
    // que son el "if let" y el "guard lef",
    // sirve para comprar si un valor es nulo...
    // y asi ejecuta un codigo dependiendo de que si es nolo o no
    // el "if let" ejecutara un bloque de codigo si el valor es verdero
    // el "guar let" ejecutara una clausula "else" si el bloque no es verdadero
    
    
    
    
    // La otra gran estructura de control..,
    // son los llamados "switch"
    // es una estructura que tomando como referencia un valor...
    // los va a compara con diferentes patrones coincidentes
    // y en el momento que conincida con estos...
    // patrone va a ejecutar el bloque de codigo corresponciente
    // como en "switch", tendremos varios...
    // posibles que pueda tener un valor, pero solo uno coincidente.
    
let country = "EEUU"
    // Sintaxis de la sentencia Switch

switch country {
case "ES":
    print("el idioma es el Españon")
case "MX":
    print("el idioma es el Españon")
case "PE":
    print("el idioma es el Españon")
case "CO":
    print("el idioma es el Españon")
case "ARG":
    print("el idioma es el Españon")
case "EEUU":
    print("el idioma es el Ingles")
default:
    print("no conocemos el idioma")
}

// no solo podemos evaluar String
// tambien podemos evaluar otro tipo de datos
// de tipo Int por ejemplo

let age = 20
switch age {
case 0,1,2:
    print("Esun bebe")
case 3...10:
    print("es un niño")
case 11..<16:
    print("es un adolescente")
case 16..<70:
    print("es un adulto")
case 70..<100:
    print("es un anciano")
default:
    print("😱")
}

// switch con enum
// en caso de utilizar enum nos combiene utilizar la swntencia switch
// podemos detectar qeu "case" estamos utilizando en el enum

enum PersonalData {
    case name
    case surname
    case address
    case phone
}
// Vomos a evaluar tipos de datosa enum

let userData: PersonalData = .name

switch userData {
case .name:
    print("estamos editando el nombre")
case .surname:
    print("estamos editando el apellidos")
case .address:
    print("estamos editando el dirección")
case .phone:
    print("estamos editando el telefono")
}





// ---- Leccion 5: 32 Operadores ----
    
    // Operador de asignacion "="
    // es el asigna el valor  que tenga al lado derecho de la operación
    var number = 20
    // tenemos una variable llamada "number"...
    //y atraves di operador de asignacion "=", le damos un valor de 20
    
    // Operadores arigmeticos (+ - */)
    var numbersVariable = 2
    
    numbersVariable + numbersVariable
    numbersVariable - numbersVariable
    numbersVariable * numbersVariable
    numbersVariable / numbersVariable
    
    // Operadores compuestos se compone por mas de un operador,...
    // aricmetico y de asignacion
    // al utiliza el operador de asignacion en este caso,...
    // el valor es acumulativo
    
    numbersVariable += 2
    numbersVariable -= 2
    numbersVariable *= 2
    numbersVariable /= 2
    
    // operador de comparacion
    var x = 1
    var y = 2
    
    // Igual a ==
    x == y
    
    // Diferente a !=
    x != y
    
    // Mayor  que >
    x < y
    
    // Menor que <
    x > y
    
    // Mayo o igual que >=
    x >= y
    
    // Menor o igual que <=
    x <= y
    
    
    
    
    // ---- Leccion 5: 33 Operadores Lógicos ----
    
    
    // Nos van a servir para modificar o combinar...
    // diferentes valores lógicos
    // los operadores lógicos, son tres
    
    // No (not), es el operador lógico de negacion
    // sive para imvertir el valor del buliano,
    // se representa von un signo de "!"
    
    // Y (and), podremos crear una expresion lógica combinada
    // donde todos los valores tiene que ser verdadero ...
    // y lo representartemos en codigo con dos "&&"
    
    // O (or), podemos crear una expresion lógica donde...
    // almenos unas de las condiciones es vedadera ...
    // y se representa en codico "||"
