//
//  ToDoTests.swift
//  ToDoTests
//
//  Created by Amitai Blickstein on 7/17/18.
//  Copyright © 2018 Amitai Blickstein. All rights reserved.
//

import XCTest
@testable import ToDo

class ToDoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func test_Init_WhenGivenTitle_SetsTitle() {
        let item = ToDoItem(title: "Foo")
        XCTAssertEqual(item.title, "Foo",
                       "should set title")
    }

    func test_Init_WhenGivenDescription_SetsDescription() {
        let item = ToDoItem(title: "Foo",
                            description: "Bar")
        XCTAssertEqual(item.itemDescription, "Bar",
                       "should set description")
    }
    
    func test_Init_SetsTimestamp() {
        let item = ToDoItem(title: "",
                            timestamp: 0.0)
        XCTAssertEqual(item.timestamp, 0.0,
                       "should set timestamp")
    }
    
    func test_Init_WhenGivenLocation_SetsLocation() {
        let location = Location(name: "Foo")
        let item = ToDoItem(title: "",
                            location: location)
        
        XCTAssertEqual(location.name, item.location?.name,
                       "should set location")
    }
    
    func test_EqualItems_AreEqual() {
        let first  = ToDoItem(title: "Foo")
        let second = ToDoItem(title: "Foo")
        
        XCTAssertEqual(first, second, "should be equal")
    }
    
    func test_Items_WhenLocationDiffers_AreNotEqual() {
        let first  = ToDoItem(title: "", location: Location(name: "NYC"))
        let second = ToDoItem(title: "", location: Location(name: "LAX"))
        
        XCTAssertNotEqual(first, second, "should not be equal")
    }
}
