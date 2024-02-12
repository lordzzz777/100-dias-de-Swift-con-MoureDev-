import Foundation

// ---- Leccion 8: 57 Optinal ----


// Una de las caracteristicas de Swift...
// es que estamos ante un lenguaje tipado...
// el propio lenguaje no hevita cometer errores...
// y uno de los mecanismos con los que nos ayuda ...
// es precisamente con los tipos opcionales ...
// los obcionales , es una caracteristica de swift...
// que nos ayuda a manejar las ausencias de valor como "nil" o nulos...
// se representara escribiendo el signo de "?" despues de su tipo.
// esto quiere decir que si queremos representar un String nulo..
// tenemos que escribie la palabra reserbada "String" seguida de la...
// interrogación, vasicamente sirve para...
// representar datos que puedentener ono valor


// ---- 58 Variables Optinal ----


// para trasformar una cadena de texto en un entero
let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

// si pulsamos en command y espacia colocando el cursor alprincipio del parentesis
// veremos que in aparece con "Int?()"


// ¿se puede combertir un nombre de cadena de texto en un entero?
// no se puede por lo tanto, el resultado del entero sera nulo "nil"
// esto quiere decir que cuando estamos intentando retornar
// una cadena de texto a un entero estomos intentando retornar un entero opcional
// "let myWrongIntNumber: Int? = Int(myWrongStringNumber)", que podemos...
// representar el tipo de dato mas el signo de interrogacion

let myWrongStringNumber = "Esteban"
let myWrongIntNumber = Int(myWrongStringNumber)


// ejemplo
var myOptionalString: String?
print(myIntNumber ?? "")

if myOptionalString != nil {
    print("Esta variable no es nula")
}else{
    print("Esta variable es nula")
}

// en cambio si le damos un valor
myOptionalString = "Ya tengo valor"

if myOptionalString != nil {
    print("Esta variable no es nula")
}else{
    print("Esta variable es nula")
}

//dejo el valor nulo para el ejemplo de la siguiente sección
myOptionalString = nil


// ---- 59 Optinal Binding ----

// Enlaces opcionales, los utilizaremos para...
// averiguar si un opcinal contine un valor distinto a nulo.
// ¿como crear un enlace opcinal?
// tendremos que utilizar la palabra reserbada...
// "if" y la palabra reserbada "let"

if let myString = myOptionalString {
    // este bloque de codigo se ejecuta cuando myString
    // sea diferente de nulo
    print(myString)
    
}else{
    print(myOptionalString ?? "")
}

// vemos como se jecuta el print dentro del else, dado que el valor es nulo
// provemos en el siguiente ejemplo adarle un

myOptionalString = "Pedro"

if let myString = myOptionalString {
    // este bloque de codigo se ejecuta cuando myString
    // sea diferente de nulo
    print(myString)
    
}else{
    print(myOptionalString ?? "")
}
// esta manera nos aseguramos que myString no tiene un valor no nulo
// para evaluar mas una variable opcinal

var myOptionalString2: String?
var myOptionalString3: String?
var myOptionalString4: String?

myOptionalString2 = "No soy nula 2"
myOptionalString3 = "No soy nula 3"
myOptionalString4 = "No soy nula 4"

if let myString2 = myOptionalString2, let myString3 =  myOptionalString3, let myString4 = myOptionalString4 {
    // este bloque de codigo se ejecuta cuando myString
    // sea diferente de nulo
    print("\(myString2), \(myString3), \(myString4) ")
    
}else{
    print("Alguna variable es nula")
}

// esto es llamado el encadenamiento de enlaces opcionales

// Denpaquetado forzado
// cuando obligamos a la variable o constante que nos diga su valor
print(myOptionalString!)



// ---- 60 Optinal Chaining ----


// cadena de opcionales, sirve para acdeder de...
// forma segura a valores opcionales que estan anidados

class Student {
    var name: String?
    var book: Book?
}

class Book{
    var pages: Int?
}

let myStudent = Student()
let myBook = Book()

print(myStudent.name ?? "")
print(myStudent.book?.pages ?? Int())

// utilizar los enlaces opcionales, en cadena
// se aria de la misma forma que si estuvieramos...
// ante una variable o constante opcional

if let page = myStudent.book?.pages {
    print("El libro tiene el \(page) paginas")
}else {
    print("El libro no tiene paginas")
}

// vamos a acceder a nuestro estudiante y vamos a darle un valor

myStudent.name = "Antonio"
myBook.pages = 50
myStudent.book = myBook

if let page = myStudent.book?.pages, let name = myStudent.name {
    print("El libro de \(name) tiene \(page) paginas")
}else {
    print("El libro no tiene paginas")
}



// ---- 61 Guard let ----


// Sentencia de salida rapida, es exigir que...
// una condición sea verdadera, ...
// para que se ejecute el codigo siguiente
// en caso de que sea nulo es parar nuestro programa

var myOptinalString5: String?

func myFuncion(){
    guard let miTexto = myOptinalString5 else{
        print("Es nulo")
        return
    }
    
    print("el valor de mi texto es de \(miTexto)")
}

myFuncion()

myOptinalString5 = "Tengo valor, no soy nulo"

myFuncion()



// ---- 62 Manejo de errores ----



func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int {
    
    // lanzar los errores
    if firstNumber == nil {
        throw SumError.firstNumberNil
    }else if secondNumber == nil {
        throw SumError.secondNumberNil
    }else if firstNumber! < 0 || secondNumber! < 0 {
        throw SumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    
    // Se realiza la suma
    return firstNumber! + secondNumber!
}

// definir tipos de error, a traves de los "enum"

enum SumError: Error {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

// Propagacion de errores
// para poder ver los errores es llamar a nuestra funcion
do{
    print(try sum(firstNumber: 100, secondNumber: 50))
}catch SumError.firstNumberNil {
    print("el primer numero es nulo")
}catch SumError.secondNumberNil{
    print("el segundo numero es nulo")
}catch SumError.numberNegative(let firstNumber, let secondNumber){
    print("Hay algunos numeros negativos, firstNumber: \(firstNumber), secondNamber: \(secondNumber)")
}

