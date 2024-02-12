import Foundation

// ---- Leccion 6: 42, 43, 44, 45, 46, 47, 48, 49 Funciones ----

// una funcion hace una tarea que el programador escribe
// la sintaxi se empieza con la palabra reservada "func"...
// seguida del nombre de lafuncion,...
// que por combicion se sule poner en minusculas,...
// detras del nombre colocamos parentesis,...
// dentro de los cuales vendria los parametros,...
// y tras los parantesis abrimos y cerramos con llaves
// egemplo: "func nombreFuncion(...parametros) {... resto codigo}
// para llamarla solo colocamos el nombre seguido de los parentesis
// Ejemplo: nombreFuncion() ...

//--- Funcion sin parametros ---
// crea la funcion
func holaMundo(){
    print("hola mundo")
}

// llamar a la funcion
// holaMundo()
// dentro de las funciones puede poner operaciones tambien
func sumaDosNumeros (){
    var n = 2 + 2
}

//sumaDosNumeros()


//--- Funcion con un solo parametro ---


// para enviar algun dato a la funcion, utilizaremos los...
// parametros de entrada que colocamos entre parentesis
func cuadradoDe(numero: Int){
    let numeroCuadrado = numero * numero
    print(numeroCuadrado)
}
//cuadradoDe(numero: 10)


//--- valores de retorno ---

// el valor de retorno lo representamos a la derecha del parentesis...
// con un guion, el signo de mayor que y el tipo de dato a retornar
// ejemplo func nombreFuncion( ...parametros) -> tipo de dato a retornar {}
func cuboDe(numero: Int) -> Int {
    let numeroCubo = numero * numero * numero
    return numeroCubo
}

//let resultado = cuboDe(numero: 10)

// de esta fonma le estamos de diciendo...
// que si que remos mandar la funcion...
// pero el valor de retorno no queremos hacer nada con el

//_ =  cuboDe(numero: 10)

//print(resultado)

//--- Funcion con multiples parametros ---

func saludoA(nombre: String, mesaje: String){
    print("Hola me llamo \(nombre) y quiero decir \(mesaje)")
}

// saludoA(nombre: "Pedro", mesaje: "Estoy muy contento")



//--- Definir valores por defecto ---

//en euna funcion se puede fijar en sus parametros...
//un valor para que lo muestre por defecto cada vez que llamaos a la funcion

func saludoA2(nombre: String, mensaje: String = "Estoy contenta"){
    print("Hola me llamo \(nombre) y quiero decir \(mensaje)")
}

//saludoA2(nombre: "Marta")

// tambien si queremos sobre escribir...
// el argumento que tenemos por defecto...
//lo podemos sobre escrivir de la siguient manera:

//saludoA2(nombre: "Marta", mensaje: "hola")



//--- Devolver multiples valores en una funcion ---

func listaNombre() -> [String]{
    let arregloNombres = ["Jose","Antono","Perico"]
    return arregloNombres
}

// var nombres = listaNombre()


//--- nombre de parametros Interno y externos ---

// Estos parametros son internos,...
// porque lo podemos usar dentro de la funcion
func calificacion(materia1: Double, materia2:Double, materia3: Double) -> Double {
return (materia1+materia2+materia3) / 3
}


// Aqui se introduce los parametros Externos
let misNotas = calificacion(materia1: 81, materia2: 45, materia3: 68)

print(misNotas)


//--- Introdución a los Closures ---

// es una bloque de codigo el cual tu puedes... 
// almacenar en una variable o constante

// la definición oficial: 
// son bloque de codigo autocontenido...
// pueden ser pasado y usasoaal al rededor del codigo...
// de tu aplicacio
/*
{

    (parametros) -> tipo-valor-retorno
    codigo...

}
*/
let miPrimerClosure = {
(materia1: Double, materia2:Double, materia3: Double) -> Double in
return (materia1+materia2+materia3) / 3
}

// para mandar a llamar este closure lo que tenemos que hacer... 
//es poner su nombre seguido de parentesis...
// y dentro de las parentesis pasarle sus argumentos

miPrimerClosure(100,22,88)

// Selo podemos pasar como argumento de otra funcion
// com por ejemplo:
print(miPrimerClosure) // A la funcion print le estamos pasando como argumento el closure
