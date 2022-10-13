//  SlidingWindowFirstNegative.swift
//  Created by Rohit Patil on 13/10/22.
import Foundation

// Question: First negative integer in every window of size k.
// Link: https://www.geeksforgeeks.org/first-negative-integer-every-window-size-k/
class SlidingWindowFirstNegative {

    public func findFirstNegativeNumbers(from numbers: [Int], kWindowSize: Int) -> [Int] {
        var firstNegativeIndex = 0
        var negativeNumbersPerWindow = [Int]()
        
        for index in (kWindowSize - 1) ..< numbers.count {
            
            while firstNegativeIndex < index &&
                    ((firstNegativeIndex <= (index - kWindowSize) )
                     || numbers[firstNegativeIndex] >= 0) {
                firstNegativeIndex += 1
            }
            
            if numbers[firstNegativeIndex] < 0 {
                negativeNumbersPerWindow.append(numbers[firstNegativeIndex])
            } else {
                negativeNumbersPerWindow.append(0)
            }
        }
        
        return negativeNumbersPerWindow
    }
}
