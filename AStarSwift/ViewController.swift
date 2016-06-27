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
        startNode.isInOpentable = true
        sw.searchNexNode(startNode, nodeB: Node(aX:16,aY:19)) { (a) in
            print("a is \(a.x)\(a.y)")

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

