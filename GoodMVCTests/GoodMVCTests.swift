//
//  GoodMVCTests.swift
//  GoodMVCTests
//
//  Created by Nikolay Ischuk on 14.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import XCTest
@testable import GoodMVC

class GoodMVCTests: XCTestCase {
    
    var controller: MainViewController! = nil
    
    override func setUp() {
        super.setUp()
        
        controller = MainViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        controller.userWantToGoNext()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
