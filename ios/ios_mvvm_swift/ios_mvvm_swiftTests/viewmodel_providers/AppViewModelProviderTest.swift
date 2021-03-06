//
//  AppViewModelProviderTest.swift
//  ios_mvvm_swiftTests
//
//  Created by Phạm Như Vũ on 10/26/18.
//  Copyright © 2018 Phạm Như Vũ. All rights reserved.
//

import XCTest
@testable import ios_mvvm_swift

class AppViewModelProviderTest: XCTestCase {

    var appViewModelProvider: AppViewModelProvider!
    
    override func setUp() {
        appViewModelProvider = AppViewModelProvider()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIncrease() {
        XCTAssertEqual(0, try appViewModelProvider.count.value())
        
        appViewModelProvider.increase(number: 1)
        XCTAssertEqual(1, try appViewModelProvider.count.value())
        
        appViewModelProvider.increase(number: 2)
        XCTAssertEqual(3, try appViewModelProvider.count.value())
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
