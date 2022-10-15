//  SubarraysExactDistinctElements.swift
//  Created by Rohit Patil on 15/10/22.
import Foundation

// Find the longest substring with k unique characters in a given string
// Link: https://www.geeksforgeeks.org/find-the-longest-substring-with-k-unique-characters-in-a-given-string/
class SubarraysExactDistinctCharacters {
    
    public func longestSubstringLength(string: String, kDistinctCharacters: Int) -> Int {
        var charFrequencyMap = [Character: Int]()
        let targetChars = Array(string)
        var swStart = 0
        var swEnd = 0
        var longestSubstringLength = 0
        
        while swEnd < string.count && swStart < string.count {
            addOrIncrement(key: targetChars[swEnd], charFrequencies: &charFrequencyMap)
            
            if charFrequencyMap.count == kDistinctCharacters {
                longestSubstringLength = max(longestSubstringLength, swEnd - swStart + 1)
            } else if charFrequencyMap.count > kDistinctCharacters{
                // More than needed distinct elements.
                // Decrease the sliding window length from the beginning so that additional distinct characters
                // are discarded.
                while charFrequencyMap.count > kDistinctCharacters {
                    removeOrDecrement(key: targetChars[swStart], charFrequencies: &charFrequencyMap)
                    swStart += 1
                }
            }
            
            swEnd += 1
        }
        
        return longestSubstringLength
    }
    
    private func addOrIncrement(key: Character, charFrequencies: inout [Character: Int]) {
        if let currentValue = charFrequencies[key] {
            charFrequencies[key] = currentValue + 1
        } else {
            charFrequencies[key] = 1
        }
    }
    
    private func removeOrDecrement(key: Character, charFrequencies: inout [Character: Int]) {
        if let currentValue = charFrequencies[key] {
            if currentValue == 1 {
                charFrequencies.removeValue(forKey: key)
            } else {
                charFrequencies[key] = currentValue - 1
            }
        }
    }
}
