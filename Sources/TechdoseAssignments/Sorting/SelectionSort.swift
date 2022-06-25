//
//  SelectionSort.swift
//  TechdoseAssignments
//
//  Created by Rohit Patil on 25/06/22.
//

import Foundation

// Implements selection sort algorithm.
// This algorithm tries to put the least no. at its correct position i.e. initial indexes in the array.
class SelectionSort: SortingHandler {
    
    func sort(_ numbersArray: [Int]) -> [Int] {
        var numbers = numbersArray

        for i in 0 ..< numbers.count {
            var minIndex = i
            for j in i+1 ..< numbers.count {
                // Find out the index having minimum element in array in the right side of "i" index.
                if numbers[minIndex] > numbers[j] {
                    minIndex = j
                }
            }
            numbers.swapAt(i, minIndex)
        }
        
        return numbers
    }
}
