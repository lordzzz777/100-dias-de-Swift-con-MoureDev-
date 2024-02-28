//
//  ViewControllerSegundaPantalla.swift
//  fabricaAutomoviles
//


import UIKit

class ViewControllerSegundaPantalla: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    
    
    var tipoAutomovil:Int?
    var automovilNormal:Automovil?
    var autoElectrico:AutomovilElectrico?
    //C
    var estadoAutomovil = false
    //
    override func viewDidLoad() {
        super.viewDidLoad()

        switch tipoAutomovil! {
        
        case 0:
            automovilNormal = Automovil()
            imageView.image = UIImage(named: "cocheSencillo")
            label.text = "Se creo el auto normal correctamente"
            
        case 1:
            
            autoElectrico = AutomovilElectrico()
            imageView.image = UIImage(named: "electrico")
            //C
            autoElectrico!.color = "Azul"
            autoElectrico!.precio = 8000
            //
            label.text = "Se creo el auto electrico correctamente"
      
        default:
            print("Error")

        }
    }
    
    @IBAction func mostrarInformacion(_ sender: Any) {
        
        //C
        switch tipoAutomovil! {
           
           case 0:
        
           label.text = """
                           El automovil tiene \(automovilNormal!.numeroLlantas) llantas,
                            es de color \(automovilNormal!.color)
                            y su precio es de \(automovilNormal!.precio) USD
                      """
                
            case 1:
                
              
             label.text = """
                            El automovil tiene \(autoElectrico!.numeroLlantas) llantas,\
                             es de color \(autoElectrico!.color),\
                             su precio es de \(autoElectrico!.precio) USD\
                            y su carga está al \(autoElectrico!.porcetajeBateria) de bateria
                          """
          
            default:
                print("Error")

            }
        
    
    
    }
    
    @IBAction func encender(_ sender: Any) {
    
   //C
   switch tipoAutomovil! {
      
      case 0:
        if(!estadoAutomovil){
        estadoAutomovil = automovilNormal!.encender()
          label.text = "El automovil encendio correctamente"
        }else{
            label.text = "El automovil ya esta encendido"
        }
      case 1:
        if(!estadoAutomovil){
        estadoAutomovil = autoElectrico!.encender()
         label.text = "El automovil encendio correctamente"
         autoElectrico!.porcetajeBateria = 75
        }else{
            label.text = "El automovil ya esta encendido"
        }
      default:
          print("Error")

      }
    
    }
    
    @IBAction func apagar(_ sender: Any) {
    
   //C
    switch tipoAutomovil! {
        
        case 0:
            if(estadoAutomovil){
            estadoAutomovil = automovilNormal!.apagar()
            label.text = "El automovil se apago correctamente"
            }else{
                label.text = "El automovil ya esta apagado"
            }
        case 1:
          if(estadoAutomovil){
            estadoAutomovil = autoElectrico!.apagar()
           label.text = "El automovil se apago correctamente"
            }else{
                label.text = "El automovil electrico ya esta apagado"
            }
        default:
            print("Error")

        }
    
    }
    
    @IBAction func acelerar(_ sender: Any) {
    
    //C
    switch tipoAutomovil! {
       case 0:
        if(estadoAutomovil){
           label.text = automovilNormal!.acelerar()
        }else{
              label.text = "El automovil tiene que estar encendido para poder acelerar"
             }
       case 1:
         if(estadoAutomovil){
            label.text = autoElectrico!.acelerar()
            autoElectrico!.porcetajeBateria = autoElectrico!.porcetajeBateria - 10
         }else{
          label.text = "El automovil electrico tiene que estar encendido para poder acelerar"
         }
       default:
           print("Error")

       }
    
    
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
