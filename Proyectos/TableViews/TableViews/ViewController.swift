//
//  ViewController.swift
//  TableViews
//
//  Created by Brais Moure.
//  Copyright © 2020 MoureDev. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    // 2.- Referencia al managed object context
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    // 3.- Cambiar a bariable tipo Paissin datos iniciales
    private var myCountries: [Paises]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self

    // 4.- Recuperar Datos
        recoberData()
    }

    @IBAction func add(_ sender: Any) {
        // print("Añadir Datos")
        let alert = UIAlertController(title: "Agregar pais", message: "Añade un Pais", preferredStyle: .alert)
        
        // Area de texto para agregar nombre pais
        alert.addTextField()
        
        //Crear y con figurar boton de alerta
        let botonAlerta = UIAlertAction(title: "Añadir", style: .default){ (action) in
            /// crea textFile de la alerta
            let textField = alert.textFields![0]
            
            /// Crea objeto pais
            let nuevoPais = Paises(context: self.context)
            nuevoPais.nombre = textField.text
        
        // Guadar información
        do{
            try self.context.save()
            print("Pais Guardado con exito")
        }catch let error as NSError {
            print("No se a guardado -> ", error.localizedDescription)
        }
            
        //Referenciar información en tableview
            self.recoberData()
        }
        
        // Añadir Boton a la alerta y mostrar la alerta
        alert.addAction(botonAlerta)
        self.present(alert, animated: true, completion: nil)
    }
    
    func recoberData(){
        do{
            self.myCountries = try context.fetch(Paises.fetchRequest())
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }catch {
            print("Error al recuperar datos")
        }
    }
}




// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 5.- Contar cuantos paises tiene
        return myCountries!.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
            if cell == nil {
               
                cell = UITableViewCell(style: .default, reuseIdentifier: "mycell")
                cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
                
            }
        cell!.textLabel?.text = myCountries![indexPath.row].nombre
            return cell!
      
            
       
    }
    
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        print(myCountries![indexPath.row])
    }
    
}

