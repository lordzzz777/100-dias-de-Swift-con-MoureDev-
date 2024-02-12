import Foundation

// ---- Leccion 5: 37. 38, 39 y 40 Bucles o ciclos ----

// Bucle "For in"
var contadora = 0

// este ciclo "for" va a itinerar o repetir
// tanta veces como elemento alla dentro del arreglo
// a la derecha del "in"
for numero in 1...4 {
    contadora += 1
   print(numero)
}
// Arreglo con Bucle "for"
var paises = ["ES", "MX", "JP"]

for pais in paises{
    print(pais)
}

// Dicionarios con Bucle "for"
var paisesD = ["ES": "España", "MX": "Mejico", "JP": "Japon"]

for (pais, significado) in paisesD {
    print("\(pais) --- \(significado)")
}

var numeros = [1,2,3,4,5,6,7,8,9]
var suma = 0

for numero in numeros {
    suma = numero + suma
}

print("la suma de los numeros es \(suma)")



// Bucle "while"
// nons va a servir para ejecutar un conjunto de instruccioness,
// has que se combierta una condicion verdadera en false

var age = 10
while age < 18{
    print("eres menor de edad, Te falta \(18 - age) años")
    age += 1
}
print("ya eres mayor de edad")


// Bucle "repeat while"
// primero hacemos y leguego preguntamos
// se entra a la estrutura, ejecutas el codigo
// y preguntas si quieres que ese ciclo quieres repetir

var numerosRepeatWhile = [1,2,3,4,5,6,7,8,9,10]
var i = numerosRepeatWhile.count - 1

repeat{
    
    numerosRepeatWhile.remove(at: i)//repite esto...
    
    i -= 1// para que no de un error de fuera de rango,
          // cada vez que se repita el codigo se restara uno a la "i"
    print("Cantidad elementos \(numerosRepeatWhile.count)")
    print("i = \(i)")
}while(numerosRepeatWhile.count > 0)// mientra esto sea verdadero
print("El arreglo esta vacio, su cantidad es de \(numerosRepeatWhile.count)")
// Mientras numeros sea mayor o igual a cero repite el ciclo

var numeroAleatorio: Int
var n = 0
repeat{
    n += 1
    numeroAleatorio = Int(arc4random_uniform(100))
    print("El ciclo lleva \(n) cantidad de interacciones")
    print("El numero aleatorio es: \(numeroAleatorio)")
}while (numeroAleatorio != 8)
