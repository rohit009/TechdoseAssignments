//  AllSubsequences.swift
//  Created by Rohit Patil on 12/08/22.

import Foundation

// Basic building block for LC 1755: https://leetcode.com/problems/closest-subsequence-sum/
class AllSubsequences {

    init() {
        currentSubSequence = [Int]()
        subSequencesCollected = [[Int]]()
    }
    
    var currentSubSequence: [Int]
    var subSequencesCollected: [[Int]]
    
    public func allSubSequences(numbers: [Int]) -> [[Int]] {
        currentSubSequence.removeAll()
        subSequencesCollected.removeAll()

        collectAllSubSequences(numbers: numbers, index: 0)
        return subSequencesCollected
    }
    

    // https://www.geeksforgeeks.org/generating-all-possible-subsequences-using-recursion/
    private func collectAllSubSequences(numbers: [Int], index: Int) {
        if index == numbers.count {
            // At this point a new sub set will be created.
            subSequencesCollected.append(currentSubSequence)
            return
        }
        
        collectAllSubSequences(numbers: numbers, index: index + 1)
        
        currentSubSequence.append(numbers[index])
        collectAllSubSequences(numbers: numbers, index: index + 1)
        
        currentSubSequence.removeLast()
    }
}
