//  File.swift
//  Created by Rohit Patil on 28/09/22.
import Foundation

// https://leetcode.com/problems/kth-largest-element-in-an-array/
// Question: Kth Largest Element in an Array.
class QuickSelect {

    public func find(kthLargest: Int, from numbers: [Int]) -> Int {
        if numbers.count < kthLargest {
            return 0
        }
        
        var endIndex = numbers.count - 1
        var startIndex = 0
        var allNumbers = numbers
        
        while startIndex <= endIndex {
            let pivot = allNumbers[endIndex]
            
            var i = startIndex - 1
            var j = startIndex
            while j < endIndex {
                if allNumbers[j] < pivot {
                    i += 1
                    allNumbers.swapAt(i, j)
                }
                
                j += 1
            }
            
            let pivotSetIndex = i + 1
            allNumbers.swapAt(endIndex, pivotSetIndex)
            
            // kth largest no.: If the index of no at correct position is (arrayLength - kthLargest).
            let kthLargestIndex = allNumbers.count - kthLargest
            
            // Return if found or reduce the search space based on whether the kth largest no. is present in the
            // right or left part of the array.
            if kthLargestIndex == pivotSetIndex {
                return pivot
            } else if kthLargestIndex > pivotSetIndex {
                startIndex = pivotSetIndex + 1
            } else {
                endIndex = pivotSetIndex - 1
            }
        }
        
        return 0
    }
}
