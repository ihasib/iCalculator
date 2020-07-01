//
//  ViewController.swift
//  Calculator
//
//  Created by S. M. Hasibur Rahman on 2/22/20.
//  Copyright © 2020 S. M. Hasibur Rahman. All rights reserved.

import UIKit

protocol OperationManagerVcProtocol {
    func updateDisplay(with text: String)
    func updateClearButton()
}

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
    var dataBridgeToOperationManager: DataCarrierVcToOperationManager?
    var clearance = ClearanceState.allClear {
        didSet {
            update()
        }
    }

    func update() {
        if clearance == .allClear {
            clearButton.setTitle("AC", for: .normal) 
        } else {
            clearButton.setTitle("<-", for: .normal)
        }
    }
    
    var isReceivingSecondArg = false
    var isAddTapped = false
    var currentOperation = Operation.none
    var textFieldDelegate: UITextFieldDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        setButtonFont()
        dataBridgeToOperationManager =  OperationManager(secondOperandObserver: self)
    }
    
    //MARK: All Button Action Methods
    @IBAction func buttonTapped(sender: UIButton) {
        dataBridgeToOperationManager?.setData(with: (sender.titleLabel?.text)!)
    }
    
    // MARK: Button Attribute Methods
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
}

extension ViewController: OperationManagerVcProtocol {
    func updateDisplay(with text: String) {
        displayLabel.text = text
    }
    
    func updateClearButton() {
        print("")
    }
    
    
}
