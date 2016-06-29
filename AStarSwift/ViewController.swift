//
//  ViewController.swift
//  AStarSwift
//
//  Created by sunyanguo on 6/24/16.
//  Copyright © 2016 sunyanguo. All rights reserved.
//

import UIKit
import CoreLocation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let sw = SMap()
//        let l = sw.findNearArray(Node(aX: 0, aY: 10))
//        print("l is \(l)")
        let startNode = Node(aX:10,aY:10)
        sw.openTable.append(startNode)
        sw.qiangTable.append(Node(aX:11,aY:11,aIsAccess: false,aIsInClosedTable:false))
        sw.qiangTable.append(Node(aX:12,aY:12,aIsAccess: false,aIsInClosedTable:false))
        sw.qiangTable.append(Node(aX:10,aY:11,aIsAccess: false,aIsInClosedTable:false))
        sw.qiangTable.append(Node(aX:11,aY:13,aIsAccess: false,aIsInClosedTable:false))
        sw.qiangTable.append(Node(aX:11,aY:12,aIsAccess: false,aIsInClosedTable:false))
        startNode.isInOpentable = true
        sw.searchNexNode(startNode, nodeB: Node(aX:16,aY:19)) { (a) in
            var t = a
            while t.parentNode != nil {
                print("a is {\(t.x), \(t.y)}")
                t = t.parentNode!
            }

        }
//        let p = Person()
//        let a = p.name
//        p.currentLocation = Plocation(x:11,y: 34)
//        p.targetLocation = Plocation(x:55,y: 83)
//        print("name :\(p.res.hValue) locationX: \(p.res.rValue)  locationY: \(p.res.vValue) a \(a)")
//        p.sayhelloTo()
//        print("arr is \(p.personArroundPList())")
//        print("arr is \(p.nextStep())")

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

