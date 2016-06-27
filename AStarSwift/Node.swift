//
//  Node.swift
//  AStarSwift
//
//  Created by sunyanguo on 6/24/16.
//  Copyright © 2016 sunyanguo. All rights reserved.
//

import Foundation

class Node: NSObject {
    var x:Int
    var y:Int
    var g:Int
    var h:Int
    var f:Int
    var isAccess:Bool
    var isInClosedTable:Bool
    var isInOpentable:Bool
    var parentNode:Node?
    
    override init() {
        x = 0
        y = 0
        g = 0
        h = 0
        f = 0
        isAccess = true
        isInClosedTable = false
        isInOpentable = false
    }
    init(aX:Int, aY:Int) {
        x = aX
        y = aY
        g = 0
        h = 0
        f = 0
        isAccess = true
        isInClosedTable = false
        isInOpentable = false
    }
//    init(aX:Int, aY:Int, aIsAccess:Bool, aIsInClosedTable:Bool ) {
//        x = aX
//        y = aY
//        isAccess = aIsAccess
//        isInClosedTable = aIsInClosedTable
//        isInOpentable = true
//    }
}