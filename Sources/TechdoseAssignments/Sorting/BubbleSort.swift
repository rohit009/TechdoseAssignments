//
//  BubbleSort.swift
//  
//
//  Created by Rohit Patil on 27/06/22.
//

import Foundation

// Implements bubble sort algorithm.
// This algorithm tries to put the greatest no. at its correct position i.e. last indexes in the array.
class BubbleSort: SortingHandler {
    func sort(_ numbersArray: [Int]) -> [Int] {
        var numbers = numbersArray

        for i in 0 ..< numbers.count {
            var didChangeList = false

            for j in 0 ..< (numbers.count - i - 1) {
                if numbers[j] > numbers[j + 1] {
                    numbers.swapAt(j, j + 1)
                    didChangeList = true
                }
            }
            
            // Optimization to stop if all the numbers are sorted as no swap was required in this iteration.
            if !didChangeList {
                break
            }
        }
        
        return numbers
    }
}
