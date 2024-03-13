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
    
    // MARK: - Variables
    
    private var total: Double = 0
    private var tem: Double = 0
    private var operating = false
    private var decimal = false
    private var operation: OperationType = .none
    
    // MARK: - Contastes
    
    private enum OperationType {
        case none, addiction, substraction, multiplication, division, percent
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        number0.round()
        number1.round()
        number2.round()
        number3.round()
        number4.round()
        number5.round()
        number6.round()
        number7.round()
        number8.round()
        number9.round()
        numberDecimal.round()
        
        operatorAC.round()
        operatorResult.round()
        operatorPercent.round()
        operatorAddition.round()
        operatorDivision.round()
        operatorSubstraction.round()
        operatorMultiplication.round()
        operatorPlusMinus.round()
        
    }

    // MARK: - Button Actios
    
    @IBAction func operatorAC(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorPusMinus(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorPercent(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorResult(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorAddition(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorSubstraction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorACMultiplication(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorDivision(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func numberDecimalAction(_ sender: UIButton) {
        sender.shine()
    }
    
    
    @IBAction func numberAction(_ sender: UIButton) {
        sender.shine()
        print(sender.tag)
    }
    
}

