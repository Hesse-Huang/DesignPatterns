//
//  Adaptor.swift
//  DesignPatterns
//
//  Created by Hesse Huang on 2017/12/7.
//  Copyright © 2017年 Hesse. All rights reserved.
//

import Foundation

/* ----- Adapter Pattern 适配器模式 ----- */
protocol AdaptorPtc {
    func adaptedOperation()
}

/// 核心，被适配的部分
protocol Adaptable {
    func originalOperation()
}

/// 适配器
class Adapter: AdaptorPtc {
    
    private var adaptee: Adaptable
    
    init(adaptee: Adaptable) {
        self.adaptee = adaptee
    }
    
    func adaptedOperation() {
        // make adaption before calling the key operation...
        print("run adapted operation")
        adaptee.originalOperation()
    }
}

class Adaptee: Adaptable {
    func originalOperation() {
        print("run original operation...")
    }
}
