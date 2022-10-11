//  MaxSpreadSubarrays.swift
//  Created by Rohit Patil on 10/10/22.
import Foundation

class MaxSpreadSubarrays {
    
    // Question-1: Count all subarrays where [(max of subarray - min of subarray) <= k].
    public func countSubarrays(numbers: [Int], maxMinDifference: Int) -> Int {
        var swStart = 0
        var swEnd = 0
        var subarraysCount = 0

        while swEnd < numbers.count {
            var currentState = computeMaxMinState(numbers: numbers[swStart ... swEnd])

            if currentState.currentDifference > maxMinDifference {
                while currentState.currentDifference > maxMinDifference {
                    swStart += 1
                    
                    currentState = computeMaxMinState(numbers: numbers[swStart ... swEnd])
                }
            }

            subarraysCount += (swEnd - swStart + 1)
            swEnd += 1
        }

        return subarraysCount
    }
    
    // Question-2: Find the max length of subarray where [(max of subarray - min of subarray) <= k].
    public func lengthOfLongestSubarray(numbers: [Int], maxMinDifference: Int) -> Int {
        var swStart = 0
        var swEnd = 0
        var longestSubarrayLength = Int.min

        while swEnd < numbers.count {
            var currentState = computeMaxMinState(numbers: numbers[swStart ... swEnd])

            if currentState.currentDifference > maxMinDifference {
                while currentState.currentDifference > maxMinDifference {
                    swStart += 1
                    
                    currentState = computeMaxMinState(numbers: numbers[swStart ... swEnd])
                }
            }

            longestSubarrayLength = max(longestSubarrayLength, (swEnd - swStart + 1))
            swEnd += 1
        }

        return longestSubarrayLength
    }

    private func computeMaxMinState(numbers: ArraySlice<Int>) -> MaxMinState {
        let maxMinState = MaxMinState(currentMax: 0, currentMin: 0)
        
        if let max = numbers.max() {
            maxMinState.currentMax = max
        }
        
        if let min = numbers.min() {
            maxMinState.currentMin = min
        }
        
        return maxMinState
    }
}

class MaxMinState {
    var currentMax: Int
    var currentMin: Int
    var currentDifference: Int {
        get {
            return currentMax - currentMin
        }
    }
    
    init(currentMax: Int, currentMin: Int) {
        self.currentMax = currentMax
        self.currentMin = currentMin
    }
}
