//  StringAnagrams.swift
//  Created by Rohit Patil on 14/10/22.
import Foundation

class StringAnagrams {

    // Question: Given two strings s and p, return an array of all the start indices of p's anagrams in s.
    // Link: https://leetcode.com/problems/find-all-anagrams-in-a-string/
    public func findAllAnagramsIn(targetString: String, anagram: String) -> [Int] {
        if anagram.count > targetString.count {
            return []
        }
        
        let targetChars = Array(targetString)
        var anagramStartIndexes = [Int]()
        var anagramDictionary = [Character: Int]()
        var currentWindowDictionary = [Character: Int]()
        
        for char in anagram {
            addOrIncrement(key: char, charFrequencies: &anagramDictionary)
        }
        
        var swPointer = 0
        let swLength = anagram.count
        for swStart in 0 ... (targetChars.count - swLength) {
            let swEnd = swStart + swLength - 1
            
            let previousCharIndex = swStart - 1
            if previousCharIndex >= 0 {
                let currentChar = targetChars[previousCharIndex]
                removeOrDecrement(key: currentChar, charFrequencies: &currentWindowDictionary)
            }
            
            while swPointer <= swEnd {
                let currentChar = targetChars[swPointer]
                addOrIncrement(key: currentChar, charFrequencies: &currentWindowDictionary)
                swPointer += 1
            }
            
            if currentWindowDictionary == anagramDictionary {
                anagramStartIndexes.append(swStart)
            }
        }
        
        return anagramStartIndexes
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

    // Question: Count occurrences of anagrams in a string. (Anagrams: Frequency / no. of letters should be same.)
    // Approach: Uses the end of sliding window as the pointer in loop.
    public func findCountOfAllAnagramsIn(targetString: String, anagram: String) -> Int {
        let targetChars = Array(targetString)
        
        var anagramDictionary = [Character: Int]()
        for char in anagram {
            if let value = anagramDictionary[char] {
                anagramDictionary[char] = value + 1
            } else {
                anagramDictionary[char] = 1
            }
        }
        
        var anagramCount = 0
        
        var currentWindowDictionary = [Character: Int]()
        let swLength = anagram.count
        var swPointer = 0
        for swEnd in (swLength - 1) ..< targetChars.count {
            if swEnd - swLength >= 0 {
                let currentChar = targetChars[swEnd - swLength]
                if let value = currentWindowDictionary[currentChar] {
                    if value == 1 {
                        currentWindowDictionary.removeValue(forKey: currentChar)
                    } else {
                        currentWindowDictionary[currentChar] = value - 1
                    }
                }
            }
            
            while swPointer <= swEnd {
                let currentChar = targetChars[swPointer]
                if let value = currentWindowDictionary[currentChar] {
                    currentWindowDictionary[currentChar] = value + 1
                } else {
                    currentWindowDictionary[currentChar] = 1
                }
                swPointer += 1
            }
            
            if currentWindowDictionary == anagramDictionary {
                anagramCount += 1
            }
            
        }
        
        return anagramCount
    }
}
