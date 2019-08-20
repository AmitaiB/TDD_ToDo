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
        XCTAssertEqual(loc.coord, coord)
    }
    
    func test_EqualLocations_AreEqual() {
        let first  = Location(name: "NYC")
        let second = Location(name: "NYC")
        
        XCTAssertEqual(first, second)
    }
    
    func test_Locations_WhenLatitudeDiffers_AreNotEqual() {
        assertLocationsNotEqual(firstName: "",
                                firstLatLong: (1,0),
                                secondName: "",
                                secondLatLong: (2,0))
    }
    
    func test_Locations_WhenLongitudeDiffers_AreNotEqual() {
        assertLocationsNotEqual(firstName: "",
                                firstLatLong: (0,1),
                                secondName: "",
                                secondLatLong: (0,2))
    }
    
    func test_Locations_WhenOnlyOneHasNonNilCoordinates_AreNotEqual() {
        assertLocationsNotEqual(firstName: "",
                                firstLatLong: (0,0),
                                secondName: "",
                                secondLatLong: nil)
    }
    
    // MARK: - Helpers
    func assertLocationsNotEqual(firstName: String,
                                firstLatLong: (Double, Double)?,
                                secondName: String,
                                secondLatLong: (Double, Double)?,
                                line: UInt = #line) {
        let firstLoc = Location(name: firstName, coord: CLLocationCoordinate2D(latLong: firstLatLong))
        let secondLoc = Location(name: secondName, coord: CLLocationCoordinate2D(latLong: secondLatLong))
        XCTAssertNotEqual(firstLoc,
                          secondLoc,
                          line: line)
    }
}

extension CLLocationCoordinate2D {
    init?(latLong: (Double, Double)?) {
        guard let coords = latLong else { return nil }
        self.init(latitude: coords.0, longitude: coords.1)
    }
}
