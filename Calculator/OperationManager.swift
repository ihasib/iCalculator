//
//  OperationManager.swift
//  Calculator
//
//  Created by S. M. Hasibur Rahman on 6/30/20.
//  Copyright © 2020 S. M. Hasibur Rahman. All rights reserved.
//

import Foundation

protocol DataCarrierVcToOperationManager {
    func setData(with buttonTitle: String)
}

enum ClearanceState: String {
    case clear = "C"
    case allClear = "AC"
}

enum Operation: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
    case modulous = "%"
    case equal = "="
    case none
}


class OperationManager {
    private var firstOperand = ""
    private var secondOperand = "" {
        didSet {
            if secondOperand == "" {
                secondOperandObserver?.updateDisplay(with: firstOperand)
            } else {
                secondOperandObserver?.updateDisplay(with: secondOperand)
            }
        }
    }
    private var firstOperator: Operation
    private var secondOperator: Operation
    private var secondOperandObserver: OperationManagerVcProtocol?
    
    init(secondOperandObserver: OperationManagerVcProtocol) {
        self.secondOperandObserver = secondOperandObserver
        firstOperator = .none
        secondOperator = .none
    }
    
    private func recognizeButton(with buttonTitle: String) {
        switch buttonTitle {
            case "0"..."9":
                generateSecondOperand(newChar: buttonTitle)
                return
            case "+":
                secondOperator = .addition
                executeOperation()
            case "-":
                secondOperator = .subtraction
                executeOperation()
            case "*":
                secondOperator = .multiplication
                executeOperation()
            case "/":
                secondOperator = .division
                executeOperation()
            case "%":
                secondOperator = .modulous
                executeOperation()
            case "=":
                secondOperator = .equal
                executeOperation()
            case ".","AC","<-":
            secondOperator = .addition
            default:
                print("operation")
        }
    }
    
    private func generateSecondOperand(newChar: String) {
        secondOperand = secondOperand + newChar
        print(secondOperand)
    }
    
    private func executeOperation() {
        if firstOperator == .none {
            firstOperand = secondOperand
        } else if firstOperator != .equal{
            var result = Double(firstOperand)!
            if secondOperand != "" {
                result = Calculator.getCalculatedValue(firstOperand: firstOperand,
                                                       secondOperand: secondOperand,
                                                       operation: firstOperator)
            }
            firstOperand = String(result)
        }
        secondOperand = ""
        firstOperator = secondOperator
        secondOperator = .none
    }
}

extension OperationManager: DataCarrierVcToOperationManager {
    func setData(with buttonTitle: String) {
        recognizeButton(with: buttonTitle)
    }
}
