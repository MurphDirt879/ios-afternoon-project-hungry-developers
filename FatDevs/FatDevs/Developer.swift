//
//  Developer.swift
//  FatDevs
//
//  Created by Ryan Murphy on 6/12/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

import Foundation

class Developer {
    
    var leftSpoon: Spoon
    var rightSpoon: Spoon
    let name: String
  

    init(leftSpoon: Spoon, rightSpoon: Spoon, name: String) {
        self.leftSpoon = leftSpoon
        self.rightSpoon = rightSpoon
        self.name = name
    }
    
    func think() {
        
        let lowIndexSpoon: Spoon
        let highIndexSpoon: Spoon
        
        if  leftSpoon.index < rightSpoon.index {
            lowIndexSpoon = leftSpoon
            highIndexSpoon = rightSpoon
        } else {
            lowIndexSpoon = rightSpoon
            highIndexSpoon = leftSpoon
        }
        
        lowIndexSpoon.pickUp()
        highIndexSpoon.pickUp()
        
        usleep(2)
        
    }

    func eat() {
        let time = UInt32.random(in: 1...10)
        usleep(time * 150_000)
        print("\(self.name) is consuming delicious viddles")
        rightSpoon.putDown()
        leftSpoon.putDown()
        print("\(self.name) has ceased consuming delicious viddles")
    }

    func run() {
        while true {
            think()
            eat()
        }
    }

 
}
