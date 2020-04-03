//
//  Logic.swift
//  Dig! Dig! Dig!
//
//  Created by George Karakyklas on 4/2/20.
//  Copyright © 2020 Gorg Gaming Lab. All rights reserved.
//

import Foundation

public class ListofOres{
    
    private var balance: Int = 0
    private var clicks: Int = 0
    private var material: Ore = Ore(name: "", value: 0, probability: 0.0, depth: 0)
    
    public var allOres = [
        Ore(name: "Dirt", value: 1, probability: 0.4, depth: 0),
        Ore(name: "Rock", value: 2, probability: 0.2, depth: 25),
        Ore(name: "Coal", value: 10, probability: 0.1, depth: 50),
        Ore(name: "Iron", value: 25, probability: 0.1, depth: 75),
        Ore(name: "Silver", value: 30, probability: 0.05, depth: 100),
        Ore(name: "Gold", value: 50, probability: 0.05, depth: 250),
        Ore(name: "Platinum", value: 150, probability: 0.04, depth: 500),
        Ore(name: "Diamond", value: 5000, probability: 0.03, depth: 750),
        Ore(name: "Emerald", value: 50000, probability: 0.03, depth: 1000)
    ]
    
    public func addClick() -> Int {
        clicks = clicks + 1
        return clicks
    }
    
    public func pickRandomOre(){
        var total_prob = 0.0
        var accum = 0
        for x in allOres {
            if x.depth! < clicks{
                total_prob = total_prob + x.probability!
                accum = accum + 1
            }
        }
        let rnd = Double.random(in: 0 ..< total_prob)
        var temp = 0.0
        for y in allOres[0 ..< accum] {
            temp = temp + y.probability!
            if rnd < temp{
                balance += y.value!
                material = y
                break
            }
        }
    }
    
    public func get_material_name() -> String{
        return material.name!
    }
    
    public func get_new_balance() -> Int{
        return balance
    }
    
    public func discovery_available() -> String{
        var value = ""
        if 1 == clicks{
            value = "https://en.wikipedia.org/wiki/Dirt"
        }
        else if 25 == clicks{
            value = "https://en.wikipedia.org/wiki/Rock_(geology)"
        }
        else if 50 == clicks{
            value = "https://en.wikipedia.org/wiki/Coal"
        }
        else if 75 == clicks{
            value = "https://en.wikipedia.org/wiki/Iron"
        }
        else if 100 == clicks{
            value = "https://en.wikipedia.org/wiki/Silver"
        }
        else if 250 == clicks{
            value = "https://en.wikipedia.org/wiki/Gold"
        }
        else if 500 == clicks{
            value = "https://en.wikipedia.org/wiki/Platinum"
        }
        else if 750 == clicks{
            value = "https://en.wikipedia.org/wiki/Diamond"
        }
        else if 1000 == clicks{
            value = "https://en.wikipedia.org/wiki/Emerald"
        }
        return value
    }

}
