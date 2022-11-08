//  MajorityElementNByK.swift
//  Created by Rohit Patil on 08/11/22.
import Foundation

// Implementation of Moore's voting algorithm.
// Question link: https://leetcode.com/problems/majority-element-ii/
class MajorityElementNByK {
    public func findMajorityElements(numbers: [Int], k: Int) -> [Int] {
        guard !numbers.isEmpty else {
            return numbers
        }
        
        var frequencyMap = [Int: Int]()
        for number in numbers {
            if let frequency = frequencyMap[number] {
                frequencyMap[number] = frequency + 1
            } else {
                frequencyMap[number] = 1
            }
        }
        
        var majorityElements = [Int]()
        for (number, frequency) in frequencyMap {
            if frequency > (numbers.count / k) {
                majorityElements.append(number)
            }
        }

        return majorityElements
    }
}
