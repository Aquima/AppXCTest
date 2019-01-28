//
//  AppTests.swift
//  AppTests
//
//  Created by Raul Quispe on 1/8/19.
//  Copyright © 2019 nara. All rights reserved.
//

import XCTest
@testable import App

class AppTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testUserNameNoNil() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        //Given
        let user:User = User()
        //When
        user.setName(value:"Raul")
        //Then
        XCTAssertNotNil(user.name)
        
    }
    func testUserAgeHigher(){
        //Given
        let user:User = User()
        //When
        user.setAge(value:18)
        //Then
        XCTAssertTrue(user.isHigher)
    }
    func testReadNumber(){
        // Given
        let view:ViewController = ViewController()
        view.txtName = UITextField()
        XCTAssertNotNil(view.txtName)
        
        view.txtName.text = "54"
        XCTAssert(view.getReadNumber(value:view.txtName.text!) == 54)
        
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
