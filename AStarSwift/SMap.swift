//
//  SMap.swift
//  AStarSwift
//
//  Created by sunyanguo on 6/24/16.
//  Copyright © 2016 sunyanguo. All rights reserved.
//

import Foundation

extension Array where Element : Equatable {
    mutating func removeObject(object : Generator.Element) {
        if let index = self.indexOf(object) {
            self.removeAtIndex(index)
        }
    }
}

class SMap:NSObject {
    var closeTable:Array<Node>
    var openTable:Array<Node>
    var kMaxF:Int
    var kSValue:Int
    var kHValue:Int

    override init() {
        closeTable = []
        openTable = []
        kMaxF = 1000
        kSValue = 14
        kHValue = 10
    }
    func nextNode(nodeA:Node, nodeB:Node) -> Node {
        
        return Node()
    }
    
    func manHValue(nodeA:Node, nodeB:Node) -> Int {
        let x = nodeA.x - nodeB.x
        let y = nodeA.y - nodeB.y
        return abs(x)*10 + abs(y)*10
    }
    
    func towNodeGValue(nodeA:Node, nodeB:Node) -> Int {
        let alist = self.isNearNodes(nodeA, nodeB: nodeB)
        if alist {
            let x = nodeA.x - nodeB.x
            let y = nodeA.y - nodeB.y
            let result = abs(x)+abs(y)
            if  result == 2 {
                return kSValue
            } else {
                return kHValue
            }
        } else {
            assert(false)
        }
        return 0
    }
    
    func isNearNodes(nodeA:Node, nodeB:Node) -> Bool {
        let x = self.findNearArray(nodeA)
        for temp in x {
            if temp.x == nodeB.x && temp.y == nodeB.y {
                return true
            }
        }
        return false
    }
    
    func findNearArray(nodeA:Node) -> Array<Node> {
        let x = nodeA.x
        let y = nodeA.y
        var a:Array<Node> = []
        for i in -1...1 {
            for j in -1...1 {
                if !(i==0 && j==0) {
                    let xx = x+i
                    let yy = y+j
                    if (xx>=0 && yy>=0 && xx<100 && yy<100) {
                        a.append(Node(aX:xx,aY: yy))
                    }
                }
            }
        }
        return a
    }
    
    func nearNodes(nodeA:Node) -> Array<Node> {
        let x = self.findNearArray(nodeA)
        
        return x.filter({ (tempNode) -> Bool in
            if !tempNode.isInOpentable {
                tempNode.parentNode = nodeA
            }
            return tempNode.isAccess && !tempNode.isInClosedTable
        })
    }
    
    func searchNexNode(nodeA:Node, nodeB:Node, nexPathNode:Node->Void) -> Node {
        if nodeA.x == 15 && nodeA.y == 19 {
            
        }
        var currentNode = nodeA
        let endNode = nodeB
        var nextNode:Node?
        let nearNodes = self.nearNodes(currentNode)
        var minF = kMaxF
        for tempNode in nearNodes {
            let tempGx = currentNode.g + self.towNodeGValue(currentNode, nodeB: tempNode);
            if tempNode.isInOpentable {
                if tempNode.g>tempGx {
                    tempNode.g = tempGx
                    tempNode.parentNode = currentNode
                }
            } else {
                tempNode.g = tempGx
                self.openTable.append(tempNode)
                tempNode.isInOpentable = true
            }
            tempNode.h = self.manHValue(tempNode, nodeB: endNode)
            tempNode.f = tempNode.g + tempNode.h
            if tempNode.f<minF && tempNode.parentNode==currentNode {
                minF = tempNode.f
                nextNode = tempNode
            }
            
        }
        self.openTable.removeObject(currentNode)
        currentNode.isInOpentable = false
        self.closeTable.append(currentNode)
        currentNode.isInClosedTable = true
        
        if nextNode==nil {
            for obj:Node in self.openTable {
                if obj.f<minF {
                    minF = obj.f
                    nextNode = obj
                }
            }
        }
        
        var isEnd = false
        for item in self.closeTable {
            if item.x == endNode.x && item.y == endNode.y {
                isEnd = true
            }
        }
        
        if isEnd {
            let endTempNode:Node! = self.closeTable.last
            if (endTempNode.x != 0) {
                nexPathNode(endTempNode)
                print("end is x:\(endTempNode.x),y:\(endTempNode.y)")
            }
            self.openTable = []
            self.closeTable = []
            
        } else if self.openTable.count == 0 {
            self.openTable = []
            self.closeTable = []
            print("no ----------- way")
        } else {
            currentNode = nextNode!
            self.searchNexNode(currentNode, nodeB: endNode, nexPathNode: nexPathNode)
        }
        

        return nodeB
    }
    
    
}