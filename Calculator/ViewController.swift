//
//  ViewController.swift
//  Calculator
//
//  Created by S. M. Hasibur Rahman on 2/22/20.
//  Copyright © 2020 S. M. Hasibur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stackViewHeight: NSLayoutConstraint!
    
    @IBOutlet weak var clearButton: UIButton!
    
    //MARK: Digit Button
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var decimalButton: UIButton!
    
    //MARK: Operational Buttons
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subtracButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var modButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var negateButton: UIButton!
    
    //MARK: Variables
    @IBOutlet weak var displayLabel: UILabel!
    var firstOperand: Double = 0
    var secondOperand: Double = 0
    var clearance = ClearanceState.allClear
    var isOperationButtonActivated = false {
        didSet {
            
        }
    }
    
    var isReceivingSecondArg = false
    var isAddTapped = false
    var currentOperation = Operation.none
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        setButtonFont()
    }
    
    func setButtonFont() {
        zeroButton.titleLabel?.font = .systemFont(ofSize: 32)
        oneButton.titleLabel?.font = .systemFont(ofSize: 32)
        twoButton.titleLabel?.font = .systemFont(ofSize: 32)
        threeButton.titleLabel?.font = .systemFont(ofSize: 32)
        fourButton.titleLabel?.font = .systemFont(ofSize: 32)
        fiveButton.titleLabel?.font = .systemFont(ofSize: 32)
        sixButton.titleLabel?.font = .systemFont(ofSize: 32)
        sevenButton.titleLabel?.font = .systemFont(ofSize: 32)
        eightButton.titleLabel?.font = .systemFont(ofSize: 32)
        nineButton.titleLabel?.font = .systemFont(ofSize: 32)
        decimalButton.titleLabel?.font = .systemFont(ofSize: 32)
        
        equalButton.titleLabel?.font = .systemFont(ofSize: 32)
        addButton.titleLabel?.font = .systemFont(ofSize: 32)
        subtracButton.titleLabel?.font = .systemFont(ofSize: 32)
        multiplyButton.titleLabel?.font = .systemFont(ofSize: 32)
        divideButton.titleLabel?.font = .systemFont(ofSize: 32)
        modButton.titleLabel?.font = .systemFont(ofSize: 32)
        negateButton.titleLabel?.font = .systemFont(ofSize: 32)
        clearButton.titleLabel?.font = .systemFont(ofSize: 32)
    }
    
    //MARK: Digit Button Action Methods
    @IBAction func digitButtonTapped(_ sender: UIButton) {
        if isAddTapped {
            displayLabel.text = String(sender.tag)
            isAddTapped = false
        } else {
            displayLabel.text = displayLabel.text?.appending(String(sender.tag))
        }
        //isReceivingSecondArg = false
        addButton.backgroundColor = .systemOrange
        isOperationButtonActivated = false
        setColorOrange()
    }
    
    
    //MARK: operation button action methods
    @IBAction func addButtonTapped(_ sender: UIButton) {
        buttonCommonOperation(sender)
        currentOperation = .addition
    }
    
    @IBAction func subtractButtonTapped(_ sender: UIButton) {
        buttonCommonOperation(sender)
        currentOperation = .subtraction
    }
    
    @IBAction func multiplyButtonTapped(_ sender: UIButton) {
        buttonCommonOperation(sender)
        currentOperation = .multiplication
    }
    
    @IBAction func divideButtonTapped(_ sender: UIButton) {
        buttonCommonOperation(sender)
        currentOperation = .division
    }
    
    @IBAction func modButtonTapped(_ sender: UIButton) {
        buttonCommonOperation(sender)
        currentOperation = .modulous
    }
    
    
    //MARK: Operator Helper Function
    func buttonCommonOperation(_ sender: UIButton) {
        if !isOperationButtonActivated {
            secondOperand = Double(displayLabel.text ?? "") ?? 0
            firstOperand = getExecutedValue()
            displayLabel.text = String(firstOperand)
            isAddTapped = true
            isReceivingSecondArg = true
        }
        setColorOrange()
        isOperationButtonActivated = true
        sender.backgroundColor = .white
    }
    
    func getExecutedValue() -> Double {
        var result = 0.0
        switch currentOperation {
            case .addition:
                result = firstOperand + secondOperand
            case .subtraction:
                result = firstOperand - secondOperand
            case .multiplication:
                result = firstOperand * secondOperand
            case .division:
                result = firstOperand / secondOperand
            case .modulous:
                result = Double(Int(firstOperand) % Int(secondOperand))
            default:
                result = secondOperand
        }
        return result
    }
    
    func setColorOrange() {
        self.addButton.backgroundColor = .systemOrange
        self.subtracButton.backgroundColor = .systemOrange
        self.multiplyButton.backgroundColor = .systemOrange
        self.divideButton.backgroundColor = .systemOrange
        self.modButton.backgroundColor = .systemOrange
    }
    
    func setColorWhite() {
        self.addButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.subtracButton .backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.multiplyButton .backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.divideButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.modButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    @IBAction func decimalButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
    }
    
    @IBAction func equalButtonTapped(_ sender: UIButton) {
        if !isOperationButtonActivated {
            secondOperand = Double(displayLabel.text ?? "") ?? 0
            firstOperand = getExecutedValue()
            displayLabel.text = String(firstOperand)
            isAddTapped = true
            isReceivingSecondArg = true
        }
        setColorOrange()
        isOperationButtonActivated = false
        currentOperation = .none
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        if clearance == .allClear {
            firstOperand = 0
            secondOperand = 0
        }
        displayLabel.text = ""
        isOperationButtonActivated = false
        setColorOrange()
        currentOperation = .none
    }
}

enum ClearanceState: String {
    case clear = "C"
    case allClear = "AC"
}

enum Operation {
    case addition
    case subtraction
    case multiplication
    case division
    case modulous
    case none
}
