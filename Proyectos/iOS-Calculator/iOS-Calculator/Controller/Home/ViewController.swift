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
    private let kTotal = "total"
    
    // Formateo de valor auxiliares
    private lazy var auxFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = ""
        formatter.decimalSeparator = locale.decimalSeparator
        formatter.numberStyle = .decimal
        formatter.maximumIntegerDigits = 100
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 100
        return formatter
    }()
    
    // Formateo de valor Total auxiliares
    private lazy var auxTotalFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = ""
        formatter.decimalSeparator = ""
        formatter.numberStyle = .decimal
        formatter.maximumIntegerDigits = 100
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 100
        return formatter
    }()
    
    // Formateo de valor de pantalla por defecto
    private lazy var printFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = locale.groupingSeparator
        formatter.decimalSeparator = locale.description
        formatter.maximumIntegerDigits = 9
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 8
        return formatter
    }()
    
    // Formato de valor por pantalla modo cientifico
    private let printScientificFormatter: NumberFormatter = {
       let formatter = NumberFormatter()
        formatter.numberStyle = .scientific
        formatter.maximumFractionDigits = 3
        formatter.exponentSymbol = "e"
        return formatter
    }()
    
    private enum OperationType {
        case none, addiction, substraction, multiplication, division, percent
       
    }
    
    // Estilo de boton
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        numberDecimal.setTitle(kDecialSeparator, for: .normal)
        
        total = UserDefaults.standard.double(forKey: kTotal)
        
        result()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
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
        clear()
        sender.shine()
    }
    
    @IBAction func operatorPusMinus(_ sender: UIButton) {
        temp = temp * (-1)
        resultLabel.text = printFormatter .string(from: NSNumber(value: temp))
        sender.shine()
    }
    
    @IBAction func operatorPercent(_ sender: UIButton) {
        if operation != .percent {
            result()
        }
        
        operating = true
        operation = .percent
        result()
        
        sender.shine()
    }
    
    @IBAction func operatorResult(_ sender: UIButton) {
        result()
        sender.shine()
    }
    
    @IBAction func operatorAddition(_ sender: UIButton) {
        if operation != .none {
                result()
            }
        
        operating = true
        operation = .addiction
        
        sender.selectOperaton(true)
        
        sender.shine()
    }
    
    @IBAction func operatorSubstraction(_ sender: UIButton) {
        if operation != .none {
                result()
            }
        
        operating = true
        operation = .substraction
        
        sender.selectOperaton(true)
        
        sender.shine()
    }
    
    @IBAction func operatorACMultiplication(_ sender: UIButton) {
        if operation != .none {
                result()
            }
        operating = true
        operation = .multiplication
        
        sender.selectOperaton(true)
        
        sender.shine()
    }
    
    @IBAction func operatorDivision(_ sender: UIButton) {
        
        if operation != .none {
            result()
        }
        
        operating = true
        operation = .division
        
        sender.selectOperaton(true)
        
        sender.shine()
    }
    
    @IBAction func numberDecimalAction(_ sender: UIButton) {
        // Optener un valor asociado a nuestran variable emporal
        let currentTemp = auxTotalFormatter.string(from: NSNumber(value: temp))!
        
        // comprobar si estamor realizando alguna operación
        if !operating && currentTemp.count >= kMaxLength {
            return
        }
        
        // se accede ala lavel y se muestra
        resultLabel.text = resultLabel.text! + (kDecialSeparator ?? "")
        decimal = true
        
        selectVisualOpewrator()
        
        sender.shine()
    }
    
    
    @IBAction func numberAction(_ sender: UIButton) {
       
        // cambia el titulo de "AC" por "C"
        operatorAC.setTitle("C", for: .normal)
        
        // accede al valor formateado de nuestro temporal
        var currentTemp = auxTotalFormatter.string(from: NSNumber(value: temp))!
        
        // Comprobar que lo que estamos escribiendo es sustectible de operar
        if !operating && currentTemp.count >= kMaxLength {
            return
        }
        
        currentTemp = auxFormatter.string(from: NSNumber(value: temp))!
        
        // asegurar que se ha seleccionado una operación
        if operating{
            total = total == 0 ? temp : total
            resultLabel.text = ""
            currentTemp = ""
            operating = false
        }
        
        // Comprobar que estemos con valores decimales
        if decimal {
            currentTemp = "\(currentTemp) \(kDecialSeparator ?? "")"
            decimal = false
        }
        
        _ = sender.tag
        temp = Double(currentTemp + String(sender.tag) )!
        resultLabel.text = printFormatter.string(from: NSNumber(value: temp))
        
        selectVisualOpewrator()
        
        sender.shine()
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
            if temp != 0 {
                total = total / temp
            }else{
                temp = 0
                resultLabel.text = "0"
            }
            break
        case .percent:
            temp = temp / 100
            total = temp
            break
        }
        // Formateo en pantalla
        if let currentTotal = auxTotalFormatter.string(from: NSNumber(value: total)), currentTotal.count > kMaxLength{
            resultLabel.text = printScientificFormatter.string(from: NSNumber(value: total))
        }else{
            resultLabel.text = printFormatter.string(from: NSNumber(value: total))
        }
        
        operation = .none
        
        selectVisualOpewrator()
        
        UserDefaults.standard.set(total, forKey: kTotal)
        
        print("Total: \(total)")
    }
    
    // Muestra la operación seleccionada
    private func selectVisualOpewrator(){
        if !operating {
            // no estamos operando
            operatorAddition.selectOperaton(false)
            operatorSubstraction.selectOperaton(false)
            operatorMultiplication.selectOperaton(false)
            operatorDivision.selectOperaton(false)
        }else {
            switch operation {
                
            case .none,  .percent:
                operatorAddition.selectOperaton(false)
                operatorSubstraction.selectOperaton(false)
                operatorMultiplication.selectOperaton(false)
                operatorDivision.selectOperaton(false)
                break
            case .addiction:
                operatorAddition.selectOperaton(true)
                operatorSubstraction.selectOperaton(false)
                operatorMultiplication.selectOperaton(false)
                operatorDivision.selectOperaton(false)
                break
            case .substraction:
                operatorAddition.selectOperaton(false)
                operatorSubstraction.selectOperaton(true)
                operatorMultiplication.selectOperaton(false)
                operatorDivision.selectOperaton(false)
                break
            case .multiplication:
                operatorAddition.selectOperaton(false)
                operatorSubstraction.selectOperaton(false)
                operatorMultiplication.selectOperaton(true)
                operatorDivision.selectOperaton(false)
                break
            case .division:
                operatorAddition.selectOperaton(false)
                operatorSubstraction.selectOperaton(false)
                operatorMultiplication.selectOperaton(false)
                operatorDivision.selectOperaton(true)
                break
            }
        }
    }
}

