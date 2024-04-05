//
//  HomeViewController.swift
//  FirebaseTutorial
//
//  Created by Esteban Perez Castillejo on 5/4/24.
//

import UIKit
import FirebaseAuth

enum  ProviderType: String {
   case basic
}

class HomeViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var providerLabel: UILabel!
    @IBOutlet var closeSessionButton: UIButton!
    
      private let email: String
      private let provider: ProviderType

    init (email: String,  provider: ProviderType){
        self.email = email
        self.provider = provider
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
          title = "Inicio"
        emailLabel.text = email
        providerLabel.text = provider.rawValue
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func closeSessionButtonAction(_ sender: Any) {
        
        switch provider {
        case .basic:
            do{
              try Auth.auth().signOut()
                navigationController?.popViewController(animated: true)
            }catch{
               print("Sea producido un error")
            }
        }
        
    }
    
}
