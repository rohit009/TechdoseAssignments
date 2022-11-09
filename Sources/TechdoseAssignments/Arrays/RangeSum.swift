//  RangeSum.swift
//  Created by Rohit Patil on 09/11/22.
import Foundation

// Range sum queries question.
// Question link: https://leetcode.com/problems/range-sum-query-immutable/
class RangeSum {
    var numbers: [Int]
    var prefixSum: [Int]
    
    init(_ nums: [Int]) {
        self.numbers = nums

        var computedPrefixSum = Array(nums)
        for index in 1 ..< nums.count {
            computedPrefixSum[index] += computedPrefixSum[index - 1]
        }

        self.prefixSum = computedPrefixSum
    }
    
    // When there are high no. of updates Segment tree is preferred approach rather than prefix sum.
    func update(_ index: Int, _ val: Int) {
        if numbers[index] == val {
            return
        }
        
        let difference = val - numbers[index]
        numbers[index] += difference
        
        for i in index ..< prefixSum.count {
            prefixSum[i] += difference
        }
    }

    func sumRange(_ left: Int, _ right: Int) -> Int {
        if left > 0 {
            return  prefixSum[right] - prefixSum[left - 1]
        }
        
        return prefixSum[right]
    }
}
