//
//  Person.swift
//  AStarSwift
//
//  Created by sunyanguo on 6/24/16.
//  Copyright © 2016 sunyanguo. All rights reserved.
//

import Foundation

class Person: NSObject {
    var name:String
    var locationX:Int
    var locationY:Int
    override init() {
        name = "abc"
        locationX = 0
        locationY = 0
    }
    func sayhelloTo( ) {
        print("name ")
    }
    
    
}
