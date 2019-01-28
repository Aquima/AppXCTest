//
//  AppUITests.swift
//  AppUITests
//
//  Created by Raul Quispe on 1/8/19.
//  Copyright © 2019 nara. All rights reserved.
//

import XCTest

class AppUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.

    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        
        let txtInput = app.textFields["txtValue"]
        txtInput.tap()
        
        let keyA = app.keys["a"]
        keyA.tap()
        
        let keyB = app.keys["b"]
        keyB.tap()
        
        let keyC = app.keys["c"]
        keyC.tap()
        
        let keyMore = app.keys["more"]
        keyMore.tap()
        
        let key1 = app.keys["1"]
        key1.tap()
        
        let btn = app.buttons["btnLogin"]
        btn.tap()
   
    }
    func testValidateNumber(){
        let app = XCUIApplication()
        let input = app.textFields["txtValue"]
        input.tap()

        let moreKey = app.keys["more"]
        moreKey.tap()

        let keyOne = app.keys["1"]
        keyOne.tap()

        let keyTwo = app.keys["2"]
        keyTwo.tap()

        let keyThree = app.keys["3"]
        keyThree.tap()

        let loginBtn = app.buttons["btnLogin"]

        let label = app.textFields["123"]
        let exist = NSPredicate(format: "exists == 1")
        loginBtn.tap()

        expectation(for: exist, evaluatedWith: label, handler: nil)
        waitForExpectations(timeout: 1.0, handler: nil)

     
    }

}
