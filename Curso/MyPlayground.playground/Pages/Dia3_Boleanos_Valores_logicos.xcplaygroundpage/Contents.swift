import Foundation

// ---- Leccion 5: 24 Boleanos y valores Lógicos ----

// En Swift, los booleanos son un tipo de dato fundamental ...
// que representa un valor lógico.
// El tipo de dato Bool se utiliza para representar...
// dos valores posibles: true (verdadero) y false (falso).
// vease estas variables donde tenemos en la primera una cadena de texto
// en la segunda guardmos un volor Int
// en la tercera y cuarta guardamos los valores boleanos

var estudios = "Estudios universitario"

var salario = 0
var celulaProfesional = true
var Magistario = false

// preguntamos con la palabra reserbada "if", que significa "si"
// por lo que estamos preguntando lo siguiente:
// si el bolor de la variable celulaProfesional es verdadero ("true")
// el valor Int de la bariable salario es de "3000"
// en caso contrario "else", el valor cambia a "1500"

if celulaProfesional {
    salario = 3000
}else{
    salario = 1500
}

// como se puede obsevar al ser el resultado verdadero ...
// la variable salaria aumenta a 3000 y el resto del codigo no se gecuta
// detras del "if" no tiene por que se solo escrivir variable
// podemos escribir comparaciones que nos arroge un verdadero o falso

if salario < 4000 { // estamos camturando un boleano
    salario = 3000
}else {
    salario = 6000
}

