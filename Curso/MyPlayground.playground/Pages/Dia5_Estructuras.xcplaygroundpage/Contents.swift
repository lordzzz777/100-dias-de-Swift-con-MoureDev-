import Foundation


// ---- Leccion 7: 52 Estructuras ----

// Son tipos propio que nosotros podemos crear

struct cuadrados{
    //Dentro de las llaves, tenemos lo que son las propiedades
    var ancho = 10
    var alto = 10
}

// ahora vamos a instaciar o crear una...
// intacia de la estructura cuadrados

var miCuadrado = cuadrados()

// Acceder a sus priopiedades,
// lo aremos de la siguiente manera:
miCuadrado.alto

// si queremos calcular el ares del cuadrado
// accederemos accederemos a sus propìedades y multiplicaremos
// la variable largo por ancha

var areaCuadrado = miCuadrado.ancho * miCuadrado.alto
print(areaCuadrado)

// Las estructura a parte de poder tener datos...
// o propìedades tambien puede tener, metodos o funciones

struct Cuadsrado2{
    var largo = 10
    var ancho = 10
    
   func area() -> Int {
       return largo * ancho
    }
    
}

var resultadoArea = Cuadsrado2()
resultadoArea.area()
