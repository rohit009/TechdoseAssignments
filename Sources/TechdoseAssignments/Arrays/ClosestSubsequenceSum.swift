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
            
//        // 1. Divide the array in 2 parts. (Keep one extra on left side.)
//        var array1Length = ceil(numbers.count / 2)
//        var array1 = numbers[0 ..< array1Length]
//        var array2 = numbers[array1Length ..< numbers.count]
        
        
        
        
        // 2. Create their subsequences.
        // 3. Sort the second array.
        // 4. Take a no. from first array and with binary search find the no. closest to goal in
        //    second array such that minimum possible value of abs(sum - goal) is found. In this
        //    if 0 difference is found then return 0 as it is the least abs min difference.

        return 0
    }

    func sumOfAllSubSequences(_ numbers: [Int]) -> [Int] {
        var allSubSequences = [Int]()
        allSubSequences.append(0)
        
        if numbers.count == 0 {
            return allSubSequences
        }
        
        allSubSequences.append(contentsOf: numbers)
        
        // $$@@ Need to add code to handle create all subsequences and then their addition.
        return allSubSequences
    }
    
}

