//  MajorityElement.swift
//  Created by Rohit Patil on 31/10/22.
import Foundation

// Implementation of Moore's voting algorithm.
// Question link: https://leetcode.com/problems/majority-element/
class MajorityElement {
    public func findMajorityElement(numbers: [Int]) -> Int {
        guard let firstElement = numbers.first else {
            return 0
        }
        
        // Last remaining currentElement will be the candidate majority element.
        var currentElement = firstElement
        var currentElementFrequency = 1
        for number in numbers.dropFirst() {
            if currentElement == number {
                currentElementFrequency += 1
            } else {
                currentElementFrequency -= 1
            }
            
            if currentElementFrequency == 0 {
                // Change the candidate majority element.
                currentElement = number
                currentElementFrequency = 1
            }
        }
        
        return currentElement
    }
}
