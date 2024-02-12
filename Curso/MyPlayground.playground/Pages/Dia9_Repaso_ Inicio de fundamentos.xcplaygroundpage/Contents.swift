import Foundation

// ---- Repaso: Fundamentos ----


//¿que es swift?

// Swift es un lenguaje compilado y multiparadigma. Con los siguientes objetivos:
// Tiene características de seguridad para evitar errores en la producción
// Tener una velocidad comparable a la de los lenguajes basados en C
// Tener una sintaxis que es un placer leer y escribir
// Swift se desarrolló como un reemplazo de Objective-C,...
// que fue el lenguaje principal utilizado para desarrollar...
// aplicaciones iOS y macOS. Swift fue desarrollado por Apple Inc.
// El idioma se lanzó por primera vez en 2014.
// Ahora es de código abierto y está disponible...
// en todos los dispositivos Apple, Linux y Windows.


// ---- Repaso: Palabras Reservadas o Palabra clave ----

// Las Palabras Reservadas (también conocidas como Palabras Clave)
// de un Lenguaje de Programación tienen asignada una determinada...
// funcionalidad o acción de manera unívoca. Quizás muchas de estas...
// funcionalidades podrían ser programadas por ti mismo,...
//  pero los creadores de los Lenguajes de Programación ya nos lo dan resuelto.
// Cada Lenguaje de Programación tiene sus propias Palabras Reservadas,...
// si bien muchas de ellas coinciden en casi todos los Lenguajes
// Estas palabras no podemos utilizarlas para nombrar a nuestras Variables,...
// Constantes, Funciones, Clases, etc., es decir,...
// no podemos utilizar una Palabra Reservada como identificador...
// de un determinado objeto en el código fuente de nuestro programa.


// ---- Repaso: Variables ----

//*** ¿Que son las variables? ***

// Es una porción de memoria donde el programa...
// almacena un valor indicado por el programador.
// Las variables poseen un nombre con el que...
// identificarlas y un tipo.
// El tipo define qué clase de información podrá...
// almacenar la variable.
// Los valores se pueden asociar con nombres definiendo una variable...
// y asignando un valor a esa variable.
// Ese nombre se puede usar para hacer referencia...
// a ese valor en todo el programa.
// Las variables son mutables,...
// lo que significa que el valor se...
// puede cambiar en cualquier momento.

// Las variables se definen utilizando la palabra clave o resebada "var".
// ejemplo:

var variableName = 10

variableName = 20 // al llamar a nuestra variable hemos cambiado su valor

// Swift es un lenguaje de tipo seguro y de tipo estático,...
// lo que significa que todos los valores tienen un tipo...
// en tiempo de compilación. Puede especificar explícitamente...
// el tipo de una variable o dejar que el compilador infiera...
// el tipo en función del valor asignado.
// Al asignar un valor a una variable, hay dos formas,...
// ya sea a través de la escritura explícita a través...
// de anotaciones de tipo o a través de la escritura implícita.

var myVariable: Int = 20 // tipo Explicito
var myvariable2 = 20 // tipo implicito

// La actualización del valor de una variable...
// se realiza utilizando el operador de asignacion "="

//****************** Nota *********************//
//                                             //
// Tenemos que los tipos de valores son:       //
// tipo "String" o cadena de texto,...         //
// de tipo entero "Int",...                    //
// de tipo Doble o decimal "DoUble".           //
//                                             //
//                                             //
// El tipo de variable se fija...              //
// una vez que se define inicialmente.         //
//                                             //
// le estou asignado un valor de tipo entero   //
//                                             //
// variableName = 10                           //
//                                             //
// al intentar cambiar a un valor de...        //
// tipo cadena de texto,                       //
// te arroja un error, por que no se...        //
// puede cambiar el tipo de valor              //
// inicial.                                    //
//                                             //
// variableName = "Cadena de texto"            //
//                                             //
//*********************************************//

// Las variables se pueden declarar sin asignar...
// un valor especificando el nombre y el tipo,...
// pero no se pueden usar antes de que se asigne un valor.

var someInt: Int

// Esto desencadenaría un error en el compilador
// Print(someInt) // Variable 'someInt' ...
// utilizada antes de ser inicializada

// Asignar un valor a los nombres
someInt = 169

print(someInt) // imprime el valor de 169

// ---- Repaso: Contantes ----

// *** ¿Que son las constantes?

// son similares a las variables en el sentido...
// de que están asociadas con un nombre y un valor,...
// pero el valor de una constante no se puede cambiar...
// una vez que se asigna inicialmente y, por lo tanto,...
// es inmutable.
// Las constantes se definen usando la palabra clave o reservada "let".

let Implicitamenteconstant = 10
let explicitamenteConstant: Int = 10

