//
//  CursoQATests.swift
//  CursoQATests
//
//  Created by Juan on 12/11/2019.
//  Copyright © 2019 MOBGEN. All rights reserved.
//

import XCTest
@testable import CursoQA


class CursoQATests: XCTestCase {

    var calculator : StringCalculator!

    override func setUp() {
        calculator = StringCalculator()
    }

    func testReturnsZeroIfTheStringIsEmpty() {

        evaluateStringCalculator(input: "", expected: 0)
    }

    func testGivenANumberReturnsTheNumer() {

        evaluateStringCalculator(input: "4", expected: 4)

    }

    func testGivenANumberReturnsTheSum() {

        evaluateStringCalculator(input: "4,5", expected: 9)

    }

    func testGivenANumberReturnsTheSumWithSmallNumbers() {

        evaluateStringCalculator(input: "1,2", expected: 3)

    }

    func evaluateStringCalculator(input:String, expected:Int) {
        XCTAssertEqual(calculator.add(numbers: input), expected)
    }


}
