//
//  ListTestTests.swift
//  ListTestTests
//
//  Created by klioop on 2021/04/18.
//

import XCTest
@testable import ListTest

class ListTestTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let manager = TodoListManager.emptyState()
        
        XCTAssertTrue(manager.items.count == 0, "Should start with empty list of todo's")
        
        manager.addItem(name: "fsdafsdf")
        XCTAssertTrue(manager.items.count == 1, "Should have one todo after adding")
    }

    

}