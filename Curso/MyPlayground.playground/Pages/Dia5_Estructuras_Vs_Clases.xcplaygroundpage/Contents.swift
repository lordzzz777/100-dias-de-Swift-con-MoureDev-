import Foundation


// ---- Leccion 7: 54 Estructuras Vs Clases ----


// ¿Cual esw la diferencia entre un estructura y una clase?
// Hay dos diferencia prin cipales:

// Referencia Vs Copia
// una copia es in dependiente, es decir es su entidad como tal

// Y una referencia, esta apuntando a lo mismo
// si la modificas, lo que esta modificando..,
// es la base todas las demas referencias que tengas,...
// seran modificadas

class ClaseAutomovil {
    var  color = "neutro"
    var numeroLlantas = 4
    var precio = 0
    
    func arrancar() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return true
    }
    
    func acelerar() -> Bool {
        return true
    }
}


var miObjetoCoche = ClaseAutomovil()

// ¿Como podemos usar su propiedades y metodos?
// Pues con la sintaxis de punto

miObjetoCoche.precio = 15000

print(miObjetoCoche.precio)

struct Estructuraautomovil {
    var  color = "neutro"
    var numeroLlantas = 4
    var precio = 0
    
    func arrancar() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return true
    }
    
    func acelerar() -> Bool {
        return true
    }
}

var miEstructuraCoche = Estructuraautomovil()

miEstructuraCoche.precio
miEstructuraCoche.precio = 20000
print(miEstructuraCoche.precio)

// ¿ que pasaria si creara un segundo objeto coche?
var miSegundoObjetoCoche = miObjetoCoche// Esto es instacia de una clase
var miSegundaEstructuraCoche = miEstructuraCoche// otro es instancia de una estructura

miSegundoObjetoCoche.precio = 10000
print(miSegundoObjetoCoche.precio)

miSegundaEstructuraCoche.precio = 12000
print(miSegundaEstructuraCoche.precio)


// La diferencia entre copia y referencia
// si se da cuenta en el ejemplo,...
// al cambiar la base se cambia toda...
// la referencia dentro del objeto..
// dado que estabamos apuntando al mismo bloque de memoria
// mientra que en la estructuara al ser una copia...
// estamos creado otro espacio de memoria...
// los dato de base no se tocan

print(miObjetoCoche.precio)// primera instacia de clase
print(miEstructuraCoche.precio)// primera instacia de estructura

// La otra diferencia entre estructura y...
// clases es que las clase puedeneredar de otras clase
//esto se le llama superclases
