//
//  iOSTestCasesTests.swift
//  iOSTestCasesTests
//
//  Created by Jay Buddhdev on 05/08/22.
//

import XCTest
@testable import iOSTestCases

class iOSTestCasesTests: XCTestCase {
    
    //Mark :- Variables
    var userViewModel : UserViewModel!
    
    override func setUpWithError() throws {
       userViewModel = UserViewModel()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        userViewModel = nil
    }

    func test_Name_Empty() throws {
        XCTAssertTrue(userViewModel.validation(userModel: User(name: "", email: "abc@gmail.com", password: "123456")),"Name is Empty")
        
        
    }
    func test_Email_Empty() throws {
        XCTAssertTrue(userViewModel.validation(userModel: User(name: "ABC", email: "", password: "123456")),"Email is Empty")
        
        
    }
    func test_Password_Empty() throws {
        XCTAssertTrue(userViewModel.validation(userModel: User(name: "ABC", email: "abc@gmail.com", password: "")),"Password is Empty")
        
        
    }
    func test_Valid_Email() throws {
        XCTAssertTrue(userViewModel.validation(userModel: User(name: "ABC", email: "abcxyz", password: "123456")),"Email is Not Valid")
        
        
    }
    func test_Success() throws {
        XCTAssertTrue(userViewModel.validation(userModel: User(name: "ABC", email: "abc@gmail.com", password: "123456")),"Test Case Success")
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
