//
//  GreenViewController.swift
//  ViewAndNavigationControls
//
//  Created by Esteban Perez Castillejo on 14/2/24.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.isHidden = true
        mySearchBar.delegate = self
    }
}

extension GreenViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        mySearchBar.resignFirstResponder()
        myLabel.text = mySearchBar.text
        myLabel.isHidden = false
    }
}

// ----- Sección 14, Search Bar (Buscador) 122 -----


//  se utiliza para proporcionar una interfaz de búsqueda dentro de una aplicación.
// Esta clase permite a los usuarios ingresar texto para buscar contenido en una
// lista o una vista de datos.

// UISearchBar es altamente personalizable y ofrece varias opciones para controlar
// su apariencia y comportamiento. Puede integrarse fácilmente en la interfaz de
// usuario de una aplicación y se puede utilizar en conjunción con otras clases,
// como UITableView o UICollectionView, para implementar una funcionalidad de
// búsqueda completa.
