//
//  ToDoItemSpec.swift
//  ToDo
//
//  Created by Amitai Blickstein on 8/19/19.
//Copyright © 2019 Amitai Blickstein. All rights reserved.
//

import Quick
import Nimble

@testable import ToDo

class ToDoItemSpec: QuickSpec {
    override func spec() {
        describe("the ToDoItem") {
            it("has an init which sets the title") {
                let item = ToDoItem(title: "Foo")
                expect(item.title).to(equal("Foo"))
            }
            
            context("if the locations are different", {
                it("should not be equal") {
                    let first  = ToDoItem(title: "", location: Location(name: "NYC"))
                    let second = ToDoItem(title: "", location: Location(name: "LAX"))
                    
                    expect(first).toNot(equal(second))
                }
            })
        }

    }
}
