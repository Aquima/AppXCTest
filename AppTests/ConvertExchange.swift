//
//  ConvertExchange.swift
//  AppTests
//
//  Created by Raul Quispe on 1/28/19.
//  Copyright © 2019 nara. All rights reserved.
//

import XCTest
@testable import App

class ConvertExchange: XCTestCase {
    func testMultiplicacion(){
        let five:AGTEuro = AGTEuro(amount: 5.0)
        let total:AGTEuro = five.times(2)
        XCTAssertEqual(10, total.amount)
    }
    func testEquitable(){
        let five:AGTEuro = AGTEuro(amount: 5.0)
        let total:AGTEuro = five.times(2)
        let ten:AGTEuro = AGTEuro(amount: 10.0)
        XCTAssertTrue(total.isEqual(ten))
        XCTAssertEqual(total, ten)
    }
}
