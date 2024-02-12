import Foundation


// ----- Enumeraciones (Enumerations): -----


// Una enumeración (enum) es un tipo de dato que permite...
// definir un conjunto finito de valores relacionados.
// Cada uno de estos valores es un caso de la enumeración...
// y puede tener un nombre asociado y un tipo opcional.
// Las enumeraciones son útiles cuando se quiere...
// representar un conjunto fijo...
// y conocido de opciones o estados.

enum EstadoCivil {
    case soltero
    case casado
    case divorciado
    case viudo
}

// En este caso, EstadoCivil es una enumeración...
// que define cuatro casos:
// soltero, casado, divorciado y viudo.
// Cada uno de estos casos...
// representa un estado civil posible.

// Casos con Valores Asociados:
// La capacidad de asociar valores con los casos...
// de una enumeración hace que este tipo sea aún más...
// flexible y versátil. Permite almacenar información...
// adicional específica para cada caso,...
// lo que resulta útil en diversas situaciones.

enum Medida {
    case longitud(Double)
    case peso(Double)
    case temperatura(Double)
}

let distancia: Medida = .longitud(10.5)
let pesoObjeto: Medida = .peso(20.3)

switch distancia {
case .longitud(let valor):
    print("La longitud es \(valor) metros.")
case .peso(let valor):
    print("El peso es \(valor) kilogramos.")
case .temperatura(let valor):
    print("La temperatura es \(valor) grados Celsius.")
}

// En este ejemplo, la enumeración Medida tiene tres casos:
// longitud, peso y temperatura, cada uno...
// de los cuales puede llevar consigo un valor...
// asociado de tipo Double. Esto facilita la...
// representación de diferentes tipos...
// de medidas con un único tipo de enumeración.

// Casos con Múltiples Valores Asociados:

enum Coordenada {
    case punto2D(x: Double, y: Double)
    case punto3D(x: Double, y: Double, z: Double)
}

let punto2D: Coordenada = .punto2D(x: 3.0, y: 4.0)
let punto3D: Coordenada = .punto3D(x: 1.0, y: 2.0, z: 3.0)

switch punto2D {
case .punto2D(let x, let y):
    print("Coordenadas 2D: x = \(x), y = \(y)")
case .punto3D(let x, let y, let z):
    print("Coordenadas 3D: x = \(x), y = \(y), z = \(z)")
}

// En este caso, la enumeración...
// Coordenada tiene dos casos:
// punto2D y punto3D.
// Cada uno de estos casos tiene...
// múltiples valores asociados,...
// representando las...
// coordenadas en un plano 2D o 3D.

// Ventajas de Casos con Valores Asociados:

// Expresividad:
// Permite expresar conceptos complejos...
// y heterogéneos de manera clara y concisa...
// en una única estructura de datos.

// Información Detallada:
// Facilita la inclusión de detalles específicos...
// para cada caso, mejorando la capacidad...
// de modelar situaciones del mundo real.

// Descriptivo en el Patrón Switch:
// Al utilizar un switch, es posible extraer y utilizar...
// los valores asociados de manera directa,...
// lo que hace que el código sea más legible y expresivo.

// Las enumeraciones con casos asociados son una...
// herramienta poderosa en Swift,...
// especialmente cuando se trata de modelar...
// estructuras de datos complejas y heterogéneas...
// de manera clara y segura.



// Uso de Instrucciones switch:

// Una de las ventajas clave de las enumeraciones...
// en Swift es su capacidad para trabajar de manera...
// efectiva con instrucciones switch.
// El código se vuelve legible y expresivo cuando se...
// utiliza una instrucción switch para manejar los...
// diferentes casos de una enumeración.
//Por ejemplo:

enum EstadoCivil {
    case soltero
    case casado
    case divorciado
    case viudo
}

let estado: EstadoCivil = .casado

switch estado {
case .soltero:
    print("Soltero")
case .casado:
    print("Casado")
case .divorciado:
    print("Divorciado")
case .viudo:
    print("Viudo")
}

// En este ejemplo, la instrucción switch maneja...
// cada caso posible de la enumeración EstadoCivil,...
// y puedes realizar acciones específicas según el estado.

// Valores Asociados:
// Las enumeraciones pueden tener valores asociados,...
// lo que las hace más flexibles.
// Cada caso puede contener información adicional.
// Por ejemplo:

enum ResultadoConsulta {
    case exitoso(String)
    case fallido(Int, String)
}

let exitoso = ResultadoConsulta.exitoso("Consulta exitosa")
let fallido = ResultadoConsulta.fallido(404, "No se encontró la página")

switch exitoso {
case .exitoso(let mensaje):
    print("Éxito:", mensaje)
case .fallido(let codigo, let mensaje):
    print("Fallo con código \(codigo):", mensaje)
}


// En este caso, el valor asociado con el caso...
// exitoso es un mensaje de tipo String, y el caso...
// fallido tiene dos valores asociados: un código...
// de error de tipo Int y un mensaje de tipo String.
// Al utilizar switch, puedes acceder y utilizar...
// estos valores asociados de manera conveniente.

// Métodos Asociados:
// Las enumeraciones también pueden tener métodos...
// asociados, permitiendo encapsular la funcionalidad...
// relacionada con la enumeración.
// Por ejemplo:

enum Actividad {
    case correr(distancia: Double)
    case nadar(tiempo: Double)
    
    func describir() -> String {
        switch self {
        case .correr(let distancia):
            return "Corriendo \(distancia) kilómetros"
        case .nadar(let tiempo):
            return "Nadando durante \(tiempo) minutos"
        }
    }
}

let actividad1 = Actividad.correr(distancia: 10.5)
let actividad2 = Actividad.nadar(tiempo: 45.0)

print(actividad1.describir())  // Imprime: "Corriendo 10.5 kilómetros"
print(actividad2.describir())  // Imprime: "Nadando durante 45.0 minutos"

// En este ejemplo, la enumeración Actividad...
// tiene dos casos, cada uno con un método...
// asociado llamado describir().
// Este método proporciona una descripción...
// de la actividad según el caso.

// En resumen, las enumeraciones en Swift ofrecen...
// una forma poderosa y expresiva de modelar datos...
// con un conjunto finito de opciones,...
// permitiendo un código más legible y mantenible.
