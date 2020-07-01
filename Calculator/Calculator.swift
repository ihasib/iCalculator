//
//  Calculator.swift
//  Calculator
//
//  Created by S. M. Hasibur Rahman on 6/30/20.
//  Copyright © 2020 S. M. Hasibur Rahman. All rights reserved.
//

import Foundation

class Calculator {
    static func getCalculatedValue(firstOperand: String,
                                   secondOperand: String,
                                   operation: Operation) -> Double {
        if let dFirstOperand = Double(firstOperand),
            let dSecondOperand = Double(secondOperand) {
            switch operation {
                case .addition:
                    print(dFirstOperand,dSecondOperand)
                    return dFirstOperand + dSecondOperand
                case .subtraction:
                    print(dFirstOperand,dSecondOperand)
                    return dFirstOperand - dSecondOperand
                case .multiplication:
                    print(dFirstOperand,dSecondOperand)
                    return dFirstOperand * dSecondOperand
                case .division:
                    print(dFirstOperand,dSecondOperand)
                    return dFirstOperand / dSecondOperand
                case .modulous:
                    print(dFirstOperand,dSecondOperand)
                    return Double(Int(dFirstOperand) % Int(dSecondOperand))
                default:
                    return 0.0
            }
        }
        return 0.0
    }
}
