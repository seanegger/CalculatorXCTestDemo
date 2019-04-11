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

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
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
//test functions
    //Source of reference from: https://github.com/CSI380/mnemonics/tree/master/Tests/PhoneNumberMnemonicsTests
    func testAddition1() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 6
        let actual = calculate(1, "+", 5) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testAddition2() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 1
        let actual = calculate(1, "+", 0) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testAddition3() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 21
        let actual = calculate(900, "+", -879) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testAddition4() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 623
        let actual = calculate(323, "+", 300) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    
    func testSubtraction1() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 6
        let actual = calculate(11, "-", 5) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testSubtraction2() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 0
        let actual = calculate(1, "-", 1) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testSubtraction3() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 7
        let actual = calculate(14, "-", 7) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testSubtraction4() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = -10
        let actual = calculate(10, "-", 20) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    
    func testMultiply1() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 6
        let actual = calculate(3, "*", 2) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testMultiply2() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 100
        let actual = calculate(10, "*", 10) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testMultiply3() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 6000
        let actual = calculate(300, "*", 20) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testMultiply4() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 36
        let actual = calculate(6, "*", 6) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testDivide1() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 1
        let actual = calculate(10, "/", 10) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testDivide2() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 54
        let actual = calculate(5400, "/", 10) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testDivide3() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 23
        let actual = calculate(23, "/", 1) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    func testDivide4() throws {
        guard #available(macOS 10.13, *) else {return}
        let expected = 2
        let actual = calculate(4, "/", 2) //actual calculations
        XCTAssertEqual(expected, actual))
    }
    
}
