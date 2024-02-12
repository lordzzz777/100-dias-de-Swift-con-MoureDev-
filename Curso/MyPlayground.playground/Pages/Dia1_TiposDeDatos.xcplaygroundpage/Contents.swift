import Foundation

// Leccion 3: 13 Y 14 Tipo de datos comunes

//-------* Tipos de datos * ---------


// -------Definiucion de Enteros Int():-----------

// Es un valor numerico que no tiene decimales...
// para saber que tipo de dato esta guarfdato nuestra variable o contante...
// pulsa sobre la tecla option del teclado y pasa la flechja del cursor...
// por encima de la del nombre de la variable o contate,
// el cursor cambia a un signo de imnterrogación,
// lo pulsamos... y nos muestra la informacion
// En Swift, Int es un tipo de dato que representa números...
// enteros sin punto decimal. Se utiliza para almacenar valores enteros...
// positivos y negativos, como -1, 0, 1, 2, etc.
// Dependiendo de la arquitectura del dispositivo,
// un Int puede ser de 32 o 64 bits de tamaño.
// En dispositivos de 32 bits,
// un Int tiene un rango de valores desde -2,147,483,648 hasta 2,147,483,647.
// En dispositivos de 64 bits,
// el rango es mucho más amplio,
// desde -9,223,372,036,854,775,808 hasta 9,223,372,036,854,775,807.
// La elección entre Int y otros tipos de datos enteros como...
// Int8, Int16, Int32 o Int64 generalmente depende del rango...
// de valores que se necesitan almacenar.
// Si el rango es conocido y se quiere optimizar el uso de memoria,
// se pueden usar tipos de enteros específicos que ocupen menos espacio en memoria.
// Si no es un factor crítico,
// Int es un tipo conveniente para representar enteros en Swift,
// ya que su tamaño se ajustará automáticamente según la arquitectura del dispositivo.

var x = 18

// Flogtantes
// Es un valor numerico que esta compuesto por decimales...
// en la documentacion oiificial es de doble precisión...
// En Swift, Float y Double son tipos de datos numéricos...
// que representan números decimales, pero difieren en...
// la precisión y el rango de valores que pueden almacenar.

// -------Definiucion de Double():-----------

// Double: Es un tipo de dato de precisión doble de 64 bits...
// en la arquitectura de punto flotante de IEEE.
// Los números de tipo Double tienen mayor precisión...
// y un rango mucho más amplio de valores en comparación con Float.
// Son más apropiados cuando se requiere alta precisión en cálculos numéricos,
// como en operaciones científicas,
// financieras o cuando se necesitan valores muy grandes o muy pequeños.

// -------Definiucion de Float():-----------

// Es un tipo de dato de precisión simple de 32 bits...
// en la arquitectura de punto flotante de IEEE.
// Los números de tipo Float pueden representar...
// un rango más limitado de valores en comparación con Double,
// pero ocupan menos espacio en memoria.
// Los Float pueden ser útiles en situaciones donde la precisión...
// no es crítica o cuando se necesita conservar memoria,
// como en dispositivos móviles

var y = 18.8

//Operadores aricmeticos + - * /

var sumaRnteros = x + 2
var sumaFlotantes = y + 2.2

// El jemplo de abajo da un error dado que se esta mezclado un entedro con uno de tipo Flotante
// por lo que esto va a dar un error...

    // var suma = x + y

// este es el error que lanza el terminal
// TiposDeDatos_dia1.xcplaygroundpage:32:19: note: overloads for '+' exist with these partially matching parameter lists: (Date, TimeInterval), (DispatchTime, Double), (DispatchWallTime, Double), (Double, Double), (Int, Int)

// para solucionar, una manera seria pasar el entero a flotamter
// ¿sepuede usar la vafriable "y", sin colocar Double()?...
// Si dado que el dato es Flotante

      var suma1 = Double(x) + y

// ¿se puede cambiar "y" a numero entero?...
// si, dela siguiente manera:

      var suma2 = x + Int(y)

// esto le esta dicien a swift que ignore lops decimales
// ¿que padsaria si fuera un a división?

      var division = x / 5

// en este caso al ser numero resultante es un entero
// ¿Que pasdaría si "x" la combertimos a flotante

     var division2 = Double(x) / 5

// podemos utilizar Float:

     var division3 = Float(x) / 5

// al combertir el entero en Double o Float...
// no ignora el decimal y te da el resultado completo


// Caracteres - Strings (Cadena de texto)

