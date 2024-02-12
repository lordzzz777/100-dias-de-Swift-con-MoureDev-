import Foundation


// ---- Leccion 8: 69 Automatic Reference Counting (ARC) ----

//Contador automatico de referencias
// swift tiene un contador de las veces que vamos a repetir una instacia
// esto se llama "Retain Count", enresumen "ARC",
// es lo que utiliza swift para liberar memoria




// ---- 70 Seguridad y manejo de memoria ----


// Enumeramos tres puntos si queremos que nuestra app sea
// lo mas optima y segura posible

// 1. Evitar acesos de escrituras simultaneos

//    - lo que quiere decir que intentemos
//      modificar el valor de una variable
//      desde diferentes puntos, esto puede
//      ser que nuesta app sea incosistente
//      y que nos encontremos comportamientos
//      raros a la hora de ejecutar.

// 2. Accesos concurrentes a la misma dirección de memoria

// 3. Duracion asiscrono del acceso
    


// ---- 71 Control de acceso ----


// Nos sirbe para controlar el macceso a diferentes partes
// de nuestro codigo, acceso que podemos restringir
// anivel de archivo o del modulo donde se esta ejecutando.
// esta carcteristica nos sirve para ocutar detalles,
// de la implementacion, que no todos el codigo de una app
// es necesario que conozca.
// El control de acceso no alluda a controlar la estabilidad
// de nuestra app.
// Tendremos diferentes controles de acceso
// los diferentes niveles de acceso seran:

// Open, public, internal, fileprivate, private
// el control de acceso lo podemos aplicar en:
// class, struct, enum, var, let, func
// basicamente en todo los tipos de objeto que tenemos en swift
// para asignar el control de acceso, lo que tendremos que acer
// es ateponer la palabra reserbada del control de acceso
// a la palabra resebada que define el tipo de objeto

// El acceso:
// open o public, lo que va a poder definir que podamos acceder
// dede cualquier parte de nuestro codigo
// El control de acceso internal, lo que va a definir es que podamos
// acceder a ese objeto dentro de nuestro modulo
// en caso de swift es el de la app que estamos contrullendo
// el acceso fileprivate, lo que va a definir es que podamos acceder
// ese objeto pero dentro de nuestro fichero
// el control de acceso private, va a retringir el uso del objeto
// unicamente al contexto que esta definido
// solemos destiguir en el bloque que esta entre llaves




// ---- 72 Operadores avanzados ----

// 1º Comcepto de Precedencia y asocitividad

// trata de la importancia delas ordenes que se ejecutan en swift

let myInt: Int = (2 + ((3 % 4) * 5))
let myInt2: Int = (((2 + 3) % 4) * 5)

// siempre que agamos operaciones en swift,
// tenemos que tener en cuenta su precedencia


// 2º comcepto los operadores avanzados

// - Operqdores bit a bit: Realiza operaciones con ...
//   bits de tipo NOT, AND, OR, XOR

// - Operadores de desplazamientos: Para deplazar bits

// - Operadores de debordamiento: Pra manejar errores en valores...
//   por encima de su limite

// - Operadores custom: Para definir nosotros mismos operadores

