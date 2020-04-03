//
//  File.swift
//  Dig! Dig! Dig!
//
//  Created by George Karakyklas on 4/2/20.
//  Copyright © 2020 Gorg Gaming Lab. All rights reserved.
//

import Foundation

public struct Ore{
    
    public var name: String?
    public var value: Int?
    public var probability: Double?
    public var depth: Int?
    
    public init(name: String, value: Int, probability: Double, depth: Int) {
        self.name = name
        self.value = value
        self.probability = probability
        self.depth = depth
    }
    
}
