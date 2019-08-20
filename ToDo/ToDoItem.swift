//
//  ToDoItem.swift
//  ToDo
//
//  Created by Amitai Blickstein on 8/16/19.
//  Copyright © 2019 Amitai Blickstein. All rights reserved.
//

import Foundation

struct ToDoItem {
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    let location: Location?
    
    init(title: String,
         description: String? = nil,
         timestamp: Double? = nil,
         location: Location? = nil
        ) {
        self.title = title
        self.itemDescription = description
        self.timestamp = timestamp
        self.location = location
    }
}

extension ToDoItem: Equatable {
    static func == (lhs: ToDoItem, rhs: ToDoItem) -> Bool {
        guard
            let lhsLoc = lhs.location,
            let rhsLoc = rhs.location
            else { return false }
        
        return lhsLoc == rhsLoc
    }
}
