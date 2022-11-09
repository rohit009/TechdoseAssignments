//
//  File.swift
//  
//
//  Created by Rohit Patil on 09/11/22.
//

import Foundation

// Kadane's Algorithm implementation.
// Question link: https://leetcode.com/problems/maximum-subarray/
class MaximumSumSubarray {
    func maxSubArray(_ nums: [Int]) -> Int {
        var current = 0
        var maxSum = Int.min
        
        for number in nums {
            current += number
            
            maxSum = max(maxSum, current)
            
            if current < 0 {
                // Do not contribute this sub-array to further sub-arrays if this is resulting in a negative
                // sum output.
                current = 0
            }
        }
        
        return maxSum
    }
}
