//
//  LocationTests.swift
//  ToDoTests
//
//  Created by Amitai Blickstein on 8/19/19.
//  Copyright © 2019 Amitai Blickstein. All rights reserved.
//

import XCTest
import CoreLocation

@testable import ToDo

class LocationTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_init_WhenGivenName_SetsName() {
        let loc = Location(name: "Foo")
        
        XCTAssertEqual(loc.name, "Foo")
    }
    
    func test_init_SetsCoordinate() {
        let coord = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        let loc = Location(name: "", coord: coord)
        XCTAssertEqual(loc.coord?.latitude, coord.latitude)
        XCTAssertEqual(loc.coord?.longitude, coord.longitude)
    }
}
