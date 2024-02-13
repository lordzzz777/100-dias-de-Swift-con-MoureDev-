//
//  PageViewController.swift
//  ViewAndNavigationControls
//
//  Created by Esteban Perez Castillejo on 13/2/24.
//

import UIKit

class PageViewController: UIPageViewController {

    private var myController: [UIViewController] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let myGreenVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcGreen")
        let myRedVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcRed")
        
        myController.append(myGreenVC)
        myController.append(myRedVC)
        
        setViewControllers([myGreenVC], direction: .forward, animated: true, completion: nil)
        
        dataSource = self
    }
}

extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let index = myController.firstIndex(of: viewController)
        if index == 0 {
            return myController.last
        }
        
        return myController.first
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = myController.firstIndex(of: viewController)
        if index == 0 {
            return myController.last
        }
        
        return myController.first
    }
    
    
}


// ----- Sección 14, TabBar Controller 120 -----


// las TabBar Controller son controladores de vista que permiten organizar múltiples
// vistas dentro de una aplicación en una interfaz de pestañas. Cada pestaña
// representa una vista diferente o una funcionalidad específica de la aplicación.


// Algunas características clave de TabBar Controller incluyen:

// Organización de contenido: Permite organizar el contenido de la aplicación en
// múltiples secciones o vistas accesibles a través de pestañas en la parte inferior de la pantalla.

// Navegación sencilla: Facilita la navegación entre las diferentes partes de la aplicación al permitir
// que el usuario cambie rápidamente entre pestañas.

// Interfaz familiar: Muchas aplicaciones populares utilizan TabBar Controller para su navegación principal,
// lo que hace que la interfaz sea familiar y fácil de entender para los usuarios.

// Personalización: Los desarrolladores pueden personalizar la apariencia de las pestañas, incluyendo sus
// íconos y etiquetas, para adaptarse al diseño y estilo de la aplicación.
// Gestión de vistas: Cada pestaña puede contener su propio controlador de vista y, por lo tanto, su propia
// jerarquía de vistas y funcionalidad específica.


// ----- Sección 14, PageView Controller 121 -----

// Son controladores de vista que permiten a los usuarios navegar a través de múltiples vistas, conocidas
// como "páginas", de manera similar a cómo lo hacen en un libro o un álbum de fotos.
// Estos controladores son útiles para implementar interfaces de usuario que implican desplazamiento
// horizontal entre varias páginas de contenido.

// La clase principal para implementar un PageView Controller en UIKit es UIPageViewController.
// Esta clase gestiona la presentación de las páginas y la interacción del usuario con ellas.
// Puedes configurar un UIPageViewController para mostrar páginas individuales, páginas en un
// orden específico o incluso para permitir al usuario desplazarse libremente entre ellas.
