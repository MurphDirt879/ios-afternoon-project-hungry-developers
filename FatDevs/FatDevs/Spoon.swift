//
//  Spoon.swift
//  FatDevs
//
//  Created by Ryan Murphy on 6/12/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

import Foundation

class Spoon {

//    static let spoonSemophore: [DispatchSemaphore] = Array(repeating: DispatchSemaphore, count: 5)
//
//    let leftSpoon: DispatchSemaphore
//    let rightSpoon: DispatchSemaphore
    
    var index: Int
    
    init(_ index: Int) {
        self.index = index
    }
    
    private let lock = NSLock()
    
    func pickUp() {
        lock.lock()
        
    }

    func putDown() {
        lock.unlock()
    }


}
