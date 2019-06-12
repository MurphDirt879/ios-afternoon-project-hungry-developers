//
//  ViewController.swift
//  FatDevs
//
//  Created by Ryan Murphy on 6/12/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        devs = callDevs()

        DispatchQueue.concurrentPerform(iterations: 5) {
            devs[$0].run()
        }
    }



    func callDevs() -> [Developer] {
        let spoon1 = Spoon(1)
        let spoon2 = Spoon(2)
        let spoon3 = Spoon(3)
        let spoon4 = Spoon(4)
        let spoon5 = Spoon(5)

        let dev1 = Developer(leftSpoon: spoon1, rightSpoon: spoon2, name: "Dev1")
        let dev2 = Developer(leftSpoon: spoon2, rightSpoon: spoon3, name: "Dev2")
        let dev3 = Developer(leftSpoon: spoon3, rightSpoon: spoon4, name: "Dev3")
        let dev4 = Developer(leftSpoon: spoon4, rightSpoon: spoon5, name: "Dev4")
        let dev5 = Developer(leftSpoon: spoon5, rightSpoon: spoon1, name: "Dev5")
        return [dev1, dev2, dev3, dev4, dev5]
    }



       var devs: [Developer] = []

}

