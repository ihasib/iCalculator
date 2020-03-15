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
    
    //MARK: Variables
    @IBOutlet weak var displayLabel: UILabel!
    var firstOperand: Double = 0
    var secondOperand: Double = 0
    var isOperationButtonActivated = false {
        didSet {
            
        }
    }
    
    var isReceivingSecondArg = false
    var isAddTapped = false
    var currentOperation = Operation.none
    
//    @IBAction func increaseStackHeight(_ sender: Any) {
//        stackViewHeight.constant = stackViewHeight.constant + 50
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: Digit Button Action Methods
    @IBAction func zeroButtonTapped(_ sender: UIButton) {
        if isAddTapped {
            displayLabel.text = "0"
            isAddTapped = false
        } else {
            displayLabel.text = displayLabel.text?.appending("0")
        }
        //isReceivingSecondArg = false
        addButton.backgroundColor = .systemOrange
        isOperationButtonActivated = false
        setColorOrange()
    }

    @IBAction func oneButtonTapped(_ sender: UIButton) {
        if isAddTapped {
            displayLabel.text = "1"
            isAddTapped = false
        } else {
            displayLabel.text = displayLabel.text?.appending("1")
        }
        //isReceivingSecondArg = false
        addButton.backgroundColor = .systemOrange
        isOperationButtonActivated = false
        setColorOrange()
    }

    @IBAction func twoButtonTapped(_ sender: UIButton) {
        if isAddTapped {
            displayLabel.text = "2"
            isAddTapped = false
        } else {
            displayLabel.text = displayLabel.text?.appending("2")
        }
        //isReceivingSecondArg = false
        addButton.backgroundColor = .systemOrange
        isOperationButtonActivated = false
        setColorOrange()
    }

    @IBAction func threeButtonTapped(_ sender: UIButton) {
        if isAddTapped {
            displayLabel.text = "3"
            isAddTapped = false
        } else {
            displayLabel.text = displayLabel.text?.appending("3")
        }
        //isReceivingSecondArg = false
        addButton.backgroundColor = .systemOrange
        isOperationButtonActivated = false
        setColorOrange()
    }
    
    @IBAction func fourButtonTapped(_ sender: UIButton) {
        if isAddTapped {
            displayLabel.text = "4"
            isAddTapped = false
        } else {
            displayLabel.text = displayLabel.text?.appending("4")
        }
        //isReceivingSecondArg = false
        addButton.backgroundColor = .systemOrange
        isOperationButtonActivated = false
        setColorOrange()
    }

    @IBAction func fiveButtonTapped(_ sender: UIButton) {
        if isAddTapped {
            displayLabel.text = "5"
            isAddTapped = false
        } else {
            displayLabel.text = displayLabel.text?.appending("5")
        }
        //isReceivingSecondArg = false
        addButton.backgroundColor = .systemOrange
        isOperationButtonActivated = false
        setColorOrange()
    }

    @IBAction func sixButtonTapped(_ sender: UIButton) {
        if isAddTapped {
            displayLabel.text = "6"
            isAddTapped = false
        } else {
            displayLabel.text = displayLabel.text?.appending("6")
        }
        //isReceivingSecondArg = false
        addButton.backgroundColor = .systemOrange
        isOperationButtonActivated = false
        setColorOrange()
    }

    @IBAction func sevenButtonTapped(_ sender: UIButton) {
        if isAddTapped {
            displayLabel.text = "7"
            isAddTapped = false
        } else {
            displayLabel.text = displayLabel.text?.appending("7")
        }
        //isReceivingSecondArg = false
        addButton.backgroundColor = .systemOrange
        isOperationButtonActivated = false
        setColorOrange()
    }
    
    @IBAction func eightButtonTapped(_ sender: UIButton) {
        if isAddTapped {
            displayLabel.text = "8"
            isAddTapped = false
        } else {
            displayLabel.text = displayLabel.text?.appending("8")
        }
        //isReceivingSecondArg = false
        addButton.backgroundColor = .systemOrange
        isOperationButtonActivated = false
        setColorOrange()
    }

    @IBAction func nineButtonTapped(_ sender: UIButton) {
        if isAddTapped {
            displayLabel.text = "9"
            isAddTapped = false
        } else {
            displayLabel.text = displayLabel.text?.appending("9")
        }
        //isReceivingSecondArg = false
        addButton.backgroundColor = .systemOrange
        setColorOrange()
        isOperationButtonActivated = false
    }
    
    //MARK: operation button action methods
    @IBAction func addButtonTapped(_ sender: UIButton) {
        
        if !isOperationButtonActivated {
        secondOperand = Double(displayLabel.text ?? "") ?? 0
//        firstOperand = firstOperand + secondOperand
        firstOperand = getExecutedValue()
        displayLabel.text = String(firstOperand)
        isAddTapped = true
//        else {
//            firstOperand =  Double(displayLabel.text ?? "0") ?? 0
//            isReceivingSecondArg = true
//        }
        isReceivingSecondArg = true
        }
        
        setColorOrange()
        isOperationButtonActivated = true
        sender.backgroundColor = .white
        currentOperation = .addition
    }

    @IBAction func subtractButtonTapped(_ sender: UIButton) {
        if !isOperationButtonActivated {
        secondOperand = Double(displayLabel.text ?? "") ?? 0
//        firstOperand = firstOperand - secondOperand
        firstOperand = getExecutedValue()
        displayLabel.text = String(firstOperand)
        isAddTapped = true
        //        else {
        //            firstOperand =  Double(displayLabel.text ?? "0") ?? 0
        //            isReceivingSecondArg = true
        //        }
        isReceivingSecondArg = true
        }
        
        setColorOrange()
        sender.backgroundColor = .white
        isOperationButtonActivated = true
        currentOperation = .subtraction
    }
    
    func getExecutedValue() -> Double {
        var result = 0.0
        switch currentOperation {
            case .addition:
            result = firstOperand + secondOperand
            case .subtraction:
            result = firstOperand - secondOperand
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
    }
    
    func setColorWhite() {
        self.addButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.subtracButton .backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.multiplyButton .backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.divideButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    @IBAction func multiplyButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
        isOperationButtonActivated = true
    }

    @IBAction func divideButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
        isOperationButtonActivated = true
    }
    
    @IBAction func modButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
        isOperationButtonActivated = true
    }

    @IBAction func decimalButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
    }

    @IBAction func equalButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
        firstOperand = 0
        secondOperand = 0
    }

    
    var clearance = ClearanceState.allClear
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        if clearance == .allClear {
            firstOperand = 0
            secondOperand = 0
        }
        displayLabel.text = "0"
        isOperationButtonActivated = false
        setColorOrange()
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
