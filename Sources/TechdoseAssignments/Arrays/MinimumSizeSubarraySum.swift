//  MinimumSizeSubarraySum.swift
//  Created by Rohit Patil on 05/10/22.
import Foundation

// Question: https://leetcode.com/problems/minimum-size-subarray-sum/
// Find the smallest sub-array with sum >= S.
class MinimumSizeSubarraySum {
    public func minimumLengthSubArraySum(targetSum: Int, numbers: [Int]) -> Int {
        if numbers.count == 0 {
            return 0
        }
        
        var i = 0
        var j = 0
        var sum = 0
        var minLength = Int.max
        
        while (j < numbers.count) {
            sum += numbers[j]
            j += 1
            
            while (sum >= targetSum) {
                minLength = min(minLength, j - i)
                sum -= numbers[i]
                i += 1
            }
        }
        
        return minLength == Int.max ? 0 : minLength
    }
}
