//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by S. M. Hasibur Rahman on 7/28/20.
//  Copyright © 2020 S. M. Hasibur Rahman. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddition() throws {
        let f = "10.0"
        let s = "20.0"
        let ans = Calculator.getCalculatedValue(firstOperand: f, secondOperand: s, operation: .addition)
        XCTAssertTrue(ans == 30, "ans should be equal to 30")
    }
    
    func testSubtraction() throws {
        let f = "10.0"
        let s = "20.0"
        let ans = Calculator.getCalculatedValue(firstOperand: f, secondOperand: s, operation: .subtraction)
        XCTAssertTrue(ans == -10, "ans should be equal to -10")
    }
    
    func testMultiplication() throws {
        let f = "10.0"
        let s = "20.0"
        let ans = Calculator.getCalculatedValue(firstOperand: f, secondOperand: s, operation: .multiplication)
        XCTAssertTrue(ans == 200, "ans should be equal to 200")
    }
    
    func testDivision() throws {
        let f = "10.0"
        let s = "20.0"
        let ans = Calculator.getCalculatedValue(firstOperand: f, secondOperand: s, operation: .division)
        XCTAssertTrue(ans == 0.5, "ans should be equal to 0.5")
    }

    func testModulus() throws {
        let f = "10.0"
        let s = "20.0"
        let ans = Calculator.getCalculatedValue(firstOperand: f, secondOperand: s, operation: .modulous)
        XCTAssertTrue(ans == 10, "ans should be equal to 10")
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
