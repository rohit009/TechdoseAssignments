//  LongestSubstringNoRepeatingChars.swift
//  Created by Rohit Patil on 15/10/22.
import Foundation

// Longest Substring Without Repeating Characters
// Link: https://leetcode.com/problems/longest-substring-without-repeating-characters/
class LongestSubstringNoRepeatingChars {
    public func findLengthOfLongestSubstringWithoutRepeatingChars(targetString: String) -> Int {
        var longestSubstringLength = 0
        let targetChars = Array(targetString)
        var swStart = 0
        var swEnd = 0
        var charFrequencies = [Character: Int]()
        
        while swStart < targetString.count && swEnd < targetString.count {
            let didIncrement = addOrIncrement(key: targetChars[swEnd], charFrequencies: &charFrequencies)
            
            if didIncrement {
                // Increment swStart to decrease window from beginning
                var didFindMonitorCharUnique = false
                while !didFindMonitorCharUnique {
                    didFindMonitorCharUnique = removeOrDecrement(
                        key: targetChars[swStart],
                        charFrequencies: &charFrequencies,
                        monitorChar: targetChars[swEnd]
                    )
                    swStart += 1
                }
            } else {
                longestSubstringLength = max(longestSubstringLength, swEnd - swStart + 1)
            }
            
            swEnd += 1
        }
        
        return longestSubstringLength
    }
    
    private func addOrIncrement(key: Character, charFrequencies: inout [Character: Int]) -> Bool {
        if let currentValue = charFrequencies[key] {
            charFrequencies[key] = currentValue + 1
            return true
        } else {
            charFrequencies[key] = 1
            return false
        }
    }
    
    private func removeOrDecrement(
        key: Character,
        charFrequencies: inout [Character: Int],
        monitorChar: Character
    ) -> Bool {
        if let currentValue = charFrequencies[key] {
            if currentValue == 1 {
                charFrequencies.removeValue(forKey: key)
            } else {
                charFrequencies[key] = currentValue - 1
            }
            
            if let monitorCharValue = charFrequencies[monitorChar] {
                return monitorCharValue == 1
            }
        }
        
        return false
    }

}
