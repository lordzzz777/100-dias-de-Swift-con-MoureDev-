//
//  ViewController.swift
//  iOS-Calculator
//
//  Created by Esteban Perez Castillejo on 13/3/24.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    
    // Label to Result
    @IBOutlet var resultLabel: UILabel!
    
    // Button to numbers
    @IBOutlet var number0: UIButton!
    @IBOutlet var number1: UIButton!
    @IBOutlet var number2: UIButton!
    @IBOutlet var number3: UIButton!
    @IBOutlet var number4: UIButton!
    @IBOutlet var number5: UIButton!
    @IBOutlet var number6: UIButton!
    @IBOutlet var number7: UIButton!
    @IBOutlet var number8: UIButton!
    @IBOutlet var number9: UIButton!
    @IBOutlet var numberDecimal: UIButton!
    
    // Operators
    @IBOutlet var operatorAC: UIButton!
    @IBOutlet var operatorPlusMinus: UIButton!
    @IBOutlet var operatorPercent: UIButton!
    @IBOutlet var operatorResult: UIButton!
    @IBOutlet var operatorAddition: UIButton!
    @IBOutlet var operatorSubstraction: UIButton!
    @IBOutlet var operatorMultiplication: UIButton!
    @IBOutlet var operatorDivision: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         
    }

    // MARK: - Button Actios
    
    @IBAction func operatorAC(_ sender: Any) {
    }
    
    @IBAction func operatorPusMinus(_ sender: Any) {
    }
    
    @IBAction func operatorPercent(_ sender: Any) {
    }
    
    @IBAction func operatorResult(_ sender: Any) {
    }
    
    @IBAction func operatorAddition(_ sender: Any) {
    }
    
    @IBAction func operatorSubstraction(_ sender: Any) {
    }
    
    @IBAction func operatorACMultiplication(_ sender: Any) {
    }
    
    @IBAction func operatorDivision(_ sender: Any) {
    }
    
    @IBAction func numberDecimalAction(_ sender: Any) {
    }
    
    
    @IBAction func numberAction(_ sender: UIButton) {
        print(sender.tag)
    }
    
}

