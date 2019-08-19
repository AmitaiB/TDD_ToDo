//
//  Location.swift
//  ToDo
//
//  Created by Amitai Blickstein on 8/19/19.
//  Copyright © 2019 Amitai Blickstein. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    let name: String
    var coord: CLLocationCoordinate2D? = nil
    
    init(name: String, coord: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coord = coord
    }
}
