//  ClosestSubsequenceSum.swift
//  Created by Rohit Patil on 09/08/22.

import Foundation

// LC 1755: https://leetcode.com/problems/closest-subsequence-sum/
// Goal: Return the minimum possible value of abs(sum - goal).
class Solution {
    func minAbsDifference(_ nums: [Int], _ goal: Int) -> Int {
        return ClosestSubsequenceSum().minAbsDifference(nums, goal)
    }
}

class ClosestSubsequenceSum {
    func minAbsDifference(_ numbers: [Int], _ goal: Int) -> Int {
            
        // 1. Divide the array in 2 parts.
        let numbersMid = numbers.count / 2
        let array1 = Array(numbers[0 ..< numbersMid])
        let array2 = Array(numbers[numbersMid ..< numbers.count])
        
        // 2. Create their subsequences. And create sum array of those subsequences.
        let subSequencesSums1 = sumOfAllSubSequences(array1)
        var subSequencesSums2 = sumOfAllSubSequences(array2)
        
        // 3. Sort the second array.
        subSequencesSums2.sort()
        
        // 4. Take a no. from first array and with binary search find the no. closest to goal in
        //    second array such that minimum possible value of abs(sum - goal) is found. In this
        //    if 0 difference is found then return 0 as it is the least abs min difference.
        var nearestValue = Int.max
        for subSequenceSum1 in subSequencesSums1 {
            var low = 0
            var high = subSequencesSums2.count - 1

            while low <= high {
                let mid = low + ((high - low) / 2) // OR ((low + high) / 2)
                                    
                let addition = subSequenceSum1 + subSequencesSums2[mid]
                if addition == goal {
                    return 0
                }
                
                let targetSoFar = abs(addition - goal)
                if targetSoFar <= nearestValue {
                    nearestValue = targetSoFar
                    // Try to find the 
                    high = mid - 1
                } else {
                    low = mid + 1
                }
            }
        }

        return nearestValue
    }

    func sumOfAllSubSequences(_ numbers: [Int]) -> [Int] {
        let allSubSequences = AllSubsequences().allSubSequences(numbers: numbers)
        
        var subSequencesSums = [Int]()
        
        for subSequence in allSubSequences {
            var sum = 0
            for num in subSequence {
                sum += num
            }
            subSequencesSums.append(sum)
        }
        
        return subSequencesSums
    }
    
}

