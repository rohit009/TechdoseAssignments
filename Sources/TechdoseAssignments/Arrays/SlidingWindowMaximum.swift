//  SlidingWindowMaximum.swift
//  Created by Rohit Patil on 12/10/22.
import Foundation

// Question: Find maximum in all subarrays of size k.
// Link: https://leetcode.com/problems/sliding-window-maximum/
class SlidingWindowMaximum {

    // Approach-1: This uses Array.max() in built function to get the max of sliding window.
    // TC: O(n^2)
    public func findAllMaxNumbersInBuilt(from numbers: [Int], kSlidingWindowSize: Int) -> [Int] {
        guard numbers.count > 0 else {
            return [Int]()
        }
        
        var maxNumbers = [Int]()
        
        for index in 0 ... (numbers.count - kSlidingWindowSize) {
            let swEndIndex = index + kSlidingWindowSize - 1
            // This point is causing the O(n^2) TC because Array.max() function has O(n) TC.
            // https://developer.apple.com/documentation/swift/array/max()
            if let currentMax = numbers[index ... swEndIndex].max() {
                maxNumbers.append(currentMax)
            }
        }
        
        return maxNumbers
    }
}

