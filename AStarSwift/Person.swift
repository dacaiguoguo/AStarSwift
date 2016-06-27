//
//  Person.swift
//  AStarSwift
//
//  Created by sunyanguo on 6/24/16.
//  Copyright © 2016 sunyanguo. All rights reserved.
//

import Foundation
struct Resolution {
    var p = Plocation()
    var G = 0
    var H = 0
}

struct Plocation {
    var x = 0
    var y = 0
}

class Person: NSObject {
    var name:String
    var currentLocation:Plocation
    var targetLocation:Plocation
    override init() {
        name = "abc"
        currentLocation = Plocation()
        targetLocation = Plocation()
    }
    func sayhelloTo( ) {
        print("name ")
    }
//    func nextStep( )->Resolution {
//        let pleftup = Plocation(x:currentLocation.x-1,y:currentLocation.y-1)
//        let sleftup = Resolution(p:pleftup,G: 1,H: 1)
//        let pup = Plocation(x:currentLocation.x,y:currentLocation.y-1)
//        let prightup = Plocation(x:currentLocation.x+1,y:currentLocation.y-1)
//        let pright = Plocation(x:currentLocation.x+1,y:currentLocation.y)
//        let prightdown = Plocation(x:currentLocation.x+1,y:currentLocation.y+1)
//        let pdown = Plocation(x:currentLocation.x,y:currentLocation.y+1)
//        let pleftdown = Plocation(x:currentLocation.x-1,y:currentLocation.y+1)
//        let pleft = Plocation(x:currentLocation.x-1,y:currentLocation.y)
//        let ar = [pleftup,pup,prightup,pright,prightdown,pdown, pleftdown,pleft]
//        var i = 0
//        let a = ar.map { (ap) -> Int in
//            i += 1
//            let x = abs(ap.x-targetLocation.x)*10
//            let y = abs(ap.y-targetLocation.y)*10
//            let H = x+y
//            if i%2 == 1 {
//                return H + 14
//            } else {
//                return H + 10
//            }
//        }
//        print("mapd \(a)")
//        for  p in ar {
//            print("p is \(p)")
//        }
//        return Plocation()
//    }
    
//    func mapdPToRre(p:Plocation) -> Int {
//        let x = abs(currentLocation.x-targetLocation.x)
//        let y = abs(currentLocation.y-targetLocation.y)
//        let H = x+y
//        return H
//    }
    
    func personArroundPList() -> Array<Plocation> {
        let pleftup = Plocation(x:currentLocation.x-1,y:currentLocation.y-1)
        let pup = Plocation(x:currentLocation.x,y:currentLocation.y-1)
        let prightup = Plocation(x:currentLocation.x+1,y:currentLocation.y-1)
        let pright = Plocation(x:currentLocation.x+1,y:currentLocation.y)
        let prightdown = Plocation(x:currentLocation.x+1,y:currentLocation.y+1)
        let pdown = Plocation(x:currentLocation.x,y:currentLocation.y+1)
        let pleftdown = Plocation(x:currentLocation.x-1,y:currentLocation.y+1)
        let pleft = Plocation(x:currentLocation.x-1,y:currentLocation.y)
        return [pleftup,pup,prightup,pright,prightdown,pdown, pleftdown,pleft]
    }
    
    
    
}
