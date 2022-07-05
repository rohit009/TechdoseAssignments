//
//  QuickSort.swift
//  
//
//  Created by Rohit Patil on 05/07/22.
//
import Foundation

// Quick sort algorithm implementation.
// Picks the last element of the array as pivot and puts that element in the correct position in the array as per the
// sort order. Then does the same for other elements of the array.
class QuickSort: SortingHandler {
    func sort(_ numbersArray: [Int]) -> [Int] {
        var numbers = numbersArray

        quickSort(&numbers, firstIndex: 0, lastIndex: numbers.count - 1)
        
        return numbers
    }
    
    private func quickSort(_ numbers: inout [Int], firstIndex: Int, lastIndex: Int) {
        // Empty or one element arrays are already sorted.
        if numbers.isEmpty || firstIndex >= lastIndex {
            return
        }
        
        // lastIndex is pivot index
        let pivot = numbers[lastIndex]
        
        var i = firstIndex - 1
        var j = firstIndex
        while j < lastIndex {
            if numbers[j] <= pivot {
                i += 1
                numbers.swapAt(i, j)
            }
            
            j += 1
        }
        
        // Put the pivot at its correct position in the array.
        i += 1
        numbers.swapAt(i, lastIndex)
        
        // Recursively sort the rest of elements before and after the pivot.
        quickSort(&numbers, firstIndex: firstIndex, lastIndex: i - 1)
        quickSort(&numbers, firstIndex: i + 1, lastIndex: lastIndex)
    }
}
