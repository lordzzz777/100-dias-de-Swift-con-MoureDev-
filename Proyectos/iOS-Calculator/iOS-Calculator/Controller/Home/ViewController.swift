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
    
    private var total: Double = 0                  // Total
    private var temp: Double = 0                   // Valor por pantalla
    private var operating = false                  // Indica si se ha inicializado un operador
    private var decimal = false                    // indica si el valor es decimal
    private var operation: OperationType = .none   // Operación actual
    
    // MARK: - Contastes
    
    private let kDecialSeparator = Locale.current.decimalSeparator
    private let kMaxLength = 9
    private let kMaxValue: Double = 999999999
    private let kMinValue: Double = 0.00000001
    
    // Formateo de valor auxiliares
    private let auxFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = ""
        formatter.decimalSeparator = locale.decimalSeparator
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    // Formateo de valor de pantalla por defecto
    private let printFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = locale.groupingSeparator
        formatter.decimalSeparator = locale.description
        formatter.maximumIntegerDigits = 9
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 8
        return formatter
    }()
    
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
        
        numberDecimal.setTitle(kDecialSeparator, for: .normal)
        
        result()
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
    
    // Lipier los valores
    private func clear(){
        operation = .none
        operatorAC.setTitle("AC", for: .normal)
        if temp != 0 {
            temp = 0
            resultLabel.text = "0"
        }else{
            total = 0
            result()
        }
    }
    
    // Obtener el resultado final
    private func result(){
        switch operation{
            
        case .none:
            // no hacemos nada
            break
        case .addiction:
            total = total + temp
            break
        case .substraction:
            total = total - temp
            break
        case .multiplication:
            total = total * temp
            break
        case .division:
            total = total / temp
            break
        case .percent:
            temp = temp / 100
            total = temp
            break
        }
        // Formateo en pantalla
        if total <= kMaxValue || total >= kMinValue {
            resultLabel.text = printFormatter.string(from: NSNumber(value: total))
        }
        print("Total: \(total)")
    }
}

