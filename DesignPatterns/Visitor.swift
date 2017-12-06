//
//  Visitor.swift
//  DesignPatterns
//
//  Created by Hesse Huang on 2017/12/7.
//  Copyright © 2017年 Hesse. All rights reserved.
//

import Cocoa

/* ----- Visitor Pattern 访问者模式 ----- */
protocol VisitorPtc {
    func visit(target: Visitable)
}

protocol Visitable {
    func accept(visitor: VisitorPtc)
}

class MyVisitor: VisitorPtc {
    func visit(target: Visitable) {
        switch target {
        case let tv as NSTableView:
            print("Target is a NSTableView: \(tv)")
        case let cv as NSCollectionView:
            print("Target is a NSCollectionView: \(cv)")
        default:
            print("Something else")
        }
    }
}

extension Visitable {
    func accept(visitor: VisitorPtc) {
        visitor.visit(target: self)
    }
}

extension NSTableView: Visitable {}
extension NSCollectionView: Visitable {}
