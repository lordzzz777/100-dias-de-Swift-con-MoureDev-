//
//  ViewController.swift
//  ViewAndNavigationControls
//
//  Created by Esteban Perez Castillejo on 10/2/24.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myFakeView: UIView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        title = "Control de navegación"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Web View
        myWebView.load(URLRequest(url: URL(string: "https://github.com/lordzzz777")!))
        
        // Mapas
        myMap.centerCoordinate = CLLocationCoordinate2D(latitude: 2.6074875, longitude: -8.3132621)
    }

    @IBAction func myButtonAction(_ sender: Any) {
        myFakeView.isHidden.toggle()
    }
    
}

// ----- Sección 14, Views 113 -----

// se refiere a un objeto que representa una porción de
// la interfaz de usuario en una aplicación de iOS.
// Una vista es responsable de dibujar contenido en la pantalla,
// manejar interacciones del usuario y responder a eventos.
// Pueden ser simples, como un botón o una etiqueta de texto,
// o complejas, como una tabla o una vista de desplazamiento.

// Una vista en UIKit es una instancia de la clase UIView o de
// una de sus subclases, como UIButton, UILabel, UITableView, etc.
// Estas vistas tienen propiedades y métodos que permiten configurar
// su apariencia, manipular su contenido y responder a eventos de
// usuario, como toques, desplazamientos y gestos.

// Las vistas pueden ser anidadas unas dentro de otras para crear
// interfaces de usuario complejas. Por ejemplo, puedes tener una
// vista de tabla que contiene celdas, y cada celda puede contener
// otras vistas, como etiquetas de texto o imágenes.

// Las views es la unidad minima ala hora de crear vistas


// ----- Sección 14, image Views 114 -----


// son objetos que se utilizan para mostrar imágenes dentro de una
// interfaz de usuario en aplicaciones iOS. Son parte del marco de
// trabajo UIKit de Apple y heredan de la clase UIView, lo que
// significa que tienen todas las capacidades de una vista estándar
// y además están especializadas en la visualización de imágenes.

// Las UIImageView son muy versátiles y se pueden utilizar para
// varios propósitos, como mostrar íconos, fotografías, gráficos o
// cualquier otro tipo de imagen en una aplicación. Pueden ser
// configuradas tanto en el Interface Builder como en el código.

// Algunas de las funciones comunes de las UIImageView incluyen la
// carga y visualización de imágenes desde recursos locales en la
// aplicación, desde URL remotas a través de la red, o incluso
// mediante la asignación de objetos UIImage directamente. Además,
// también pueden manipular propiedades como el tamaño, la posición,
// el contenido de la imagen y la escala de la imagen para adaptarse
// a las necesidades específicas de la interfaz de usuario.


// ----- Sección 14, Stack Views 115 -----

// son un tipo de contenedor de diseño introducido en iOS 9 que
// simplifica la organización y la disposición de los elementos de
// la interfaz de usuario. Una Stack View gestiona una colección de
// vistas secundarias, alineándolas en un eje principal (horizontal 
// o vertical) y, opcionalmente, distribuyéndolas uniformemente a
// lo largo del otro eje (vertical u horizontal respectivamente).

// Las Stack Views son muy útiles para crear interfaces de usuario
// flexibles y adaptables, ya que pueden adaptarse automáticamente
// a los cambios en el tamaño de la pantalla o el contenido.
// Puedes anidar Stack Views dentro de otras Stack Views para lograr
// diseños más complejos y dinámicos.

// En resumen, las Stack Views son una herramienta poderosa en UIKit
// para simplificar la organización y la disposición de la interfaz
// de usuario en aplicaciones iOS. Permiten crear diseños más
// flexibles y adaptables con menos código.



// ----- Sección 14, Scrol View 116 -----

//  es una clase que proporciona una vista con capacidad de desplazamiento.
// La función principal de UIScrollView es permitir al usuario ver contenido
// que no cabe completamente en la pantalla de un dispositivo, como por
// ejemplo, una imagen grande o un bloque de texto extenso.

// En términos simples, UIScrollView crea una ventana virtual más grande que
// el área visible en la pantalla y permite al usuario desplazarse por esta
// ventana virtual para ver diferentes partes del contenido.

// En resumen, UIScrollView es una herramienta fundamental para crear
// interfaces de usuario flexibles y escalables en aplicaciones iOS,
// especialmente cuando se trabaja con contenido extenso o visualmente
// rico que no cabe completamente en la pantalla.



// ----- Sección 14, Web View 117 -----

// es una clase en el framework de UIKit de Apple que proporciona una vista 
// para mostrar contenido web, similar a UIWebView. La diferencia principal
// es que WKWebView está basada en WebKit, la tecnología de motor de
// navegación web de Apple, y proporciona un rendimiento más rápido y una
// mejor integración con las tecnologías web modernas en comparación
// con UIWebView.

// En resumen, WKWebView es una clase que permite a los desarrolladores de
// iOS crear aplicaciones que puedan mostrar y manipular contenido web de
// una manera más eficiente y poderosa.


// ----- Sección 14, Map View 118 -----

// es una clase en el framework UIKit de iOS que proporciona una vista de
// mapa interactiva. Esta clase permite a los desarrolladores integrar
// mapas dentro de sus aplicaciones iOS, lo que les permite mostrar
// ubicaciones, rutas, anotaciones y otra información geoespacial.

// Algunas de las características y funcionalidades proporcionadas por
// MKMapView incluyen:

// Mostrar mapas estándar, satelitales o híbridos.

// Permitir la manipulación del mapa mediante gestos como pellizcar para hacer zoom,
// deslizar para moverse y tocar para seleccionar.

// Mostrar la ubicación actual del usuario en el mapa.

// Añadir anotaciones personalizadas para marcar ubicaciones específicas.

// Dibujar rutas y superponer capas adicionales en el mapa.

// Integrar la funcionalidad de búsqueda de lugares.

// En resumen, MKMapView es una poderosa herramienta para la visualización y manipulación
// de mapas en aplicaciones iOS, lo que permite a los desarrolladores crear experiencias
// interactivas y útiles basadas en la ubicación.



// ----- Sección 14, Navigation Controller 119 -----

// as Navigation Controllers son un tipo de controlador de vista que gestiona una pila de
// vistas, permitiendo la navegación entre ellas de manera jerárquica.

// Una Navigation Controller presenta una pila de vistas de contenido, donde cada vista
// corresponde a una pantalla o interfaz de usuario dentro de una aplicación.
// Estas vistas se organizan en una estructura de pila, donde la vista en la cima de la
// pila es la vista actualmente visible. Las Navigation Controllers facilitan la
// transición entre estas vistas, permitiendo que el usuario retroceda y avance a través
// de la pila de vistas de manera intuitiva.

// Una característica clave de las Navigation Controllers es su capacidad para mostrar
// automáticamente una barra de navegación en la parte superior de la interfaz de usuario.
// Esta barra de navegación suele contener botones para retroceder a la vista anterior,
// títulos que describen la ubicación actual en la jerarquía de vistas y, opcionalmente,
// otros controles de navegación personalizados.

// En resumen, las Navigation Controllers en UIKit son una herramienta fundamental para la
// navegación y la gestión de interfaces de usuario en aplicaciones iOS, proporcionando una
// forma intuitiva para que los usuarios naveguen entre distintas pantallas de contenido
// de manera jerárquica.

