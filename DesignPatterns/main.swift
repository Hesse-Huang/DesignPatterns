//
//  main.swift
//  DesignPatterns
//
//  Created by Hesse Huang on 2017/10/10.
//  Copyright © 2017年 Hesse. All rights reserved.
//

import Foundation
import Cocoa

// MARK: - Adaptor Pattern
let adaptee: Adaptable = Adaptee()
let adapter: AdaptorPtc = Adapter(adaptee: adaptee)
adapter.adaptedOperation()

// MARK: - Visitor Pattern
NSTableView().accept(visitor: MyVisitor())
NSCollectionView().accept(visitor: MyVisitor())


