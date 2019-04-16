//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Sean Egger and Tony Calarese on 3/22/19.
//  Copyright © 2019 Sean Egger. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {

    var calc: MathFunction = MathFunction()
    
    override func setUp() {
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testAdd() {
        let valA = 2.5
        let valB = 3.0
        let expectedResult = valA + valB
        XCTAssertEqual(calc.add(a: valA, b: valB), expectedResult)
    }
    
    func testSubtract() {
        let valA = 2.5
        let valB = 3.0
        let expectedResult = valA - valB
        XCTAssertEqual(calc.subtract(a: valA, b: valB), expectedResult)
    }
    
    func testDivide() {
        let valA = 2.5
        let valB = 3.0
        let expectedResult = valA/valB
        XCTAssertEqual(calc.divide(a: valA, b: valB), expectedResult)
    }
    
    func testMultiply() {
        let valA = 2.5
        let valB = 3.0
        let expectedResult = valA * valB
        XCTAssertEqual(calc.multiply(a: valA, b: valB), expectedResult)
    }
    
    func testPowerOf() {
        let valA = 2.5
        let valB = 3.0
        let expectedResult = 2.5 * 2.5 * 2.5
        XCTAssertEqual(calc.powerOf(x: valA, toThe: valB), expectedResult)
    }
    
    func testCalc() {
        let valA = 2.5
        let valB = 3.0
        var expectedResult = valA + valB
        XCTAssertEqual(calc.calculate(a: valA, b: valB, sign: +), expectedResult)
        expectedResult = valA - valB
        XCTAssertEqual(calc.calculate(a: valA, b: valB, sign: -), expectedResult)
        expectedResult = valA / valB
        XCTAssertEqual(calc.calculate(a: valA, b: valB, sign: /), expectedResult)
        expectedResult = valA * valB
        XCTAssertEqual(calc.calculate(a: valA, b: valB, sign: *), expectedResult)
    }
}
