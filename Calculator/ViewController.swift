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
    
    //MARK: digit button
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
    
    //MARK: operational button
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subtracButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var modButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    
    //MARK: Variables
    @IBOutlet weak var displayLabel: UILabel!
    var fistOperand: Double = 0
    var secondOperand: Double = 0
    
    var isReceivingSecondArg = false
    var isAddTapped = false
    
//    @IBAction func increaseStackHeight(_ sender: Any) {
//        stackViewHeight.constant = stackViewHeight.constant + 50
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func zeroButtonTapped(_ sender: UIButton) {
        if isAddTapped {
            displayLabel.text = "0"
            isAddTapped = false
        } else {
            displayLabel.text = displayLabel.text?.appending("0")
        }
        //isReceivingSecondArg = false
        addButton.backgroundColor = .systemOrange
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
    }
    
    //MARK: operation button action methods
    @IBAction func addButtonTapped(_ sender: UIButton) {
        
        
        secondOperand = Double(displayLabel.text ?? "") ?? 0
        fistOperand = fistOperand + secondOperand
        displayLabel.text = String(fistOperand)
        isAddTapped = true
//        else {
//            fistOperand =  Double(displayLabel.text ?? "0") ?? 0
//            isReceivingSecondArg = true
//        }
        isReceivingSecondArg = true
        sender.backgroundColor = .white
        
    }

    @IBAction func subtractButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
        
    }

    @IBAction func multiplyButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
    }

    @IBAction func divideButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
    }
    
    @IBAction func modButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
    }

    @IBAction func decimalButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
    }

    @IBAction func equalButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
        fistOperand = 0
        secondOperand = 0
    }

    @IBAction func clearButtonTapped(_ sender: UIButton) {
        displayLabel.text = "0"
    }
}

