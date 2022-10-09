//  SubarraysDistinctElements.swift
//  Created by Rohit Patil on 05/10/22.
import Foundation

// https://www.codingninjas.com/codestudio/problems/subarrays-with-at-most-k-distinct-values_1473804
// Find the count of sub-arrays with atmost k unique numbers from the given array.
// Need to revisit this as the approach does not work for some test cases. Approach: Variable size sliding window.
class SubarraysDistinctElements {
    public func numberOfSubarraysHaving(kDistinctElements: Int, in numbers: [Int]) -> Int {
        var swStart = 0
        var swEnd = 0
        var subarraysCount = 0
        let lastIndex = numbers.count - 1
        
        while swStart < lastIndex || swEnd < lastIndex {
            let subarrayHasKDistinctElements = isSubarray(
                numbers: numbers[swStart ... swEnd],
                withAtmost: kDistinctElements,
                start: swStart,
                end: swEnd
            )
            
            if subarrayHasKDistinctElements {
                for _ in swStart ... swEnd {
                    subarraysCount += 1
                }
                
                if swStart == 0 && swEnd == lastIndex {
                    break
                }
                
                if swEnd < lastIndex {
                    swEnd += 1
                }
            }
            
            if !subarrayHasKDistinctElements || swEnd == lastIndex {
                swStart += 1
            }
        }
        
        return subarraysCount
    }
    
    private func isSubarray(
        numbers: ArraySlice<Int>,
        withAtmost kDistinctElements: Int,
        start: Int,
        end: Int
    ) -> Bool {
        var distinctCount = 0
        
        for i in start ... end {

            var isDupe = false
            for j in start ... end {
                if j == i {
                    continue
                }
                
                if numbers[i] == numbers[j] {
                    isDupe = true
                    break
                }
            }

            if !isDupe {
                distinctCount += 1
            }
        }
        
        return distinctCount <= kDistinctElements
    }
}
