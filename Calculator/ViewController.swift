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
    
    @IBOutlet weak var zeroButton: UIButton!
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func increaseStackHeight(_ sender: Any) {
        stackViewHeight.constant = stackViewHeight.constant + 50
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func zeroButtonTapped(_ sender: Any) {
        displayLabel.text = "0"
    }
}

