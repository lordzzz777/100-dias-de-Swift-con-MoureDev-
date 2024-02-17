//
//  ViewControllerBlack.swift
//  Navegacion
//
//  Created by Esteban Perez Castillejo on 16/2/24.
//

import UIKit

class ViewControllerBlack: UIViewController {
   
    var titulo: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let titulofinal = titulo {
            self.title = titulofinal
        }
        self.view.backgroundColor = UIColor.black
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
