//  SubArrays.swift
//  Created by Rohit Patil on 05/10/22.
import Foundation

class SubArraysGenerator {
    public func subArrays(of numbers: [Int]) -> [[Int]] {
        var subArrays = [[Int]]()

        for i in 0 ..< numbers.count {
            subArrays.append([ numbers[i] ])
            
            for j in ((i + 1) ..< numbers.count) {
                subArrays.append(Array(numbers[i ... j]))
            }
        }
        
        return subArrays
    }
}
