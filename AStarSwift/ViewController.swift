//
//  ViewController.swift
//  AStarSwift
//
//  Created by sunyanguo on 6/24/16.
//  Copyright © 2016 sunyanguo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let p = Person()
        let a = p.name
        let lox = p.locationX
        let loy = p.locationY
        print("name :\(a) locationX: \(lox)  locationY: \(loy)")
        p.sayhelloTo()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

