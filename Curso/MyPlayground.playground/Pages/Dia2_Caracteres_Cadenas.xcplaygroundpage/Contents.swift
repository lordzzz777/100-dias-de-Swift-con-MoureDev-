import Foundation

// ------- Leccion 4: 17 Cadenas y cartacteres (String) --------

// Los caracteres y cadena de texto lo llamamos los "String"
// Los String, no deja de ser simbolos y palabras, ...
// en definitiva es un tipo de dato que servira para representar texto escrito.
// los String son totalmente compatible con "Unicode", por lo que podemos escribien...
// en cualquier idioma y carateres de otros paise aso como lo emojis y demas ...
// Para definirlos en swift, es cricribir caracteres o texto detro de comillas dobles


// --------- 18 Tipo de datos String --------


// Swift tiene una caracteristica que se llama inferencia de tipos
// la capacidad de adivinar que tipo estasmoos escribiendo, ...
// unicamente con la forma que lo estamos representando


// String en una linea
let myString = "100 dias con Swift"

// String en v arias lineas
let myMultipleStrin = """
esto es un string de multeples
lineas que representa una cadena de texto
en del curso de 100 dias con Swift
"""

// String en v arias lineas unicamente en codigo
let myFalseMultipleStrin = """
esto es un string de multeples\
lineas que representa una cadena de texto\
en del curso de 100 dias con Swift
"""

// String vacio
let myEmptyString = ""

// otra forma de String vacio
let myEmptyString2 = String()// esto llama a su inicializador por defecto
