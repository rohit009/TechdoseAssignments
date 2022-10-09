//  SubarraysDistinctElements.swift
//  Created by Rohit Patil on 05/10/22.
import Foundation

// Question: Find the count of sub-arrays with atmost k unique numbers from the given array.
// Approach: Sliding window + Map.
// https://www.codingninjas.com/codestudio/problems/subarrays-with-at-most-k-distinct-values_1473804
class SubarraysDistinctElements {
    public func numberOfSubarraysHaving(kDistinctElements: Int, in numbers: [Int]) -> Int {
        var swStart = 0
        var swEnd = 0
        var numberFrequencies = Dictionary<Int, Int>()
        var subarraysCount = 0
        
        while swEnd < numbers.count {
            let swEndElement = numbers[swEnd]
            if let frequency = numberFrequencies[swEndElement] {
                numberFrequencies[swEndElement] = frequency + 1
            } else {
                numberFrequencies[swEndElement] = 1
            }
            
            // if (numberFrequencies.count <= kDistinctElements) condition will be handled at the end of this while
            // loop.
            
            while numberFrequencies.count > kDistinctElements {
                let swStartElement = numbers[swStart]
                if let frequency = numberFrequencies[swStartElement] {
                    if frequency == 1 {
                        numberFrequencies.removeValue(forKey: swStartElement)
                    } else {
                        numberFrequencies[swStartElement] = frequency - 1
                    }
                    swStart += 1
                }
            }
            
            subarraysCount += (swEnd - swStart + 1)
            swEnd += 1
        }
        
        return subarraysCount
    }

}
