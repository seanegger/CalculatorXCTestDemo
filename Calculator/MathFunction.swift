//
//  MathFunction.swift
//  Calculator
//
//  Created by Sean Egger on 3/22/19.
//  Copyright © 2019 Sean Egger. All rights reserved.
//

import Foundation

class MathFunction{
    /*
     Calculates the result of two double values on the given operator
     */
    func calculate(a: Double, b: Double, sign: (Double, Double)-> Double) -> Double {
        return sign(a,b)
    }
    
    func add(a: Double, b: Double) -> Double {
        return calculate(a: a, b: b, sign: +)
    }
    
    func subtract(a: Double, b: Double) -> Double {
        return calculate(a: a, b: b, sign: -)
    }
    
    func divide(a: Double, b: Double) -> Double {
        return calculate(a: a, b: b, sign: /)
    }
    
    func multiply(a: Double, b: Double) -> Double {
        return calculate(a: a, b: b, sign: *)
    }
    
    func powerOf(x: Double, toThe: Double) -> Double {
        var total = 1.0;
        for _ in 1...Int(toThe) {
           total *= x
        }
        return total
    }
}
