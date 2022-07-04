//
//  MergeSort.swift
//  
//
//  Created by Rohit Patil on 04/07/22.
//

import Foundation

// Implements merge sort algorithm.
// Steps: 1. Binary partitioning, 2. Merge two sorted lists.
class MergeSort: SortingHandler {
    func sort(_ numbersArray: [Int]) -> [Int] {
        return mergeSort(numbersArray)
    }
    
    private func mergeSort(_ numbersArray: [Int]) -> [Int] {
        if numbersArray.isEmpty || numbersArray.count == 1 {
            return numbersArray
        }
        
        var numbers = numbersArray

        // Passed the numbers by reference.
        mergeSort(&numbers, low: 0, high: numbers.count - 1)
        
        return numbers
    }
    
    private func mergeSort(_ numbersArray: inout [Int], low: Int, high: Int) {
        if low == high {
            // A single no. list is always sorted.
            return
        }
        
        let mid = low + ((high - low) / 2)
        mergeSort(&numbersArray, low: low, high: mid)  // Sort the left list.
        mergeSort(&numbersArray, low: mid + 1, high: high)  // Sort the right list.
        mergeSortedArraysUsingExtraSpace(&numbersArray, low: low, mid: mid, high: high)  // Merge two sorted lists.
    }
    
    
    // This implementation uses extra space to merge the arrays.
    // There is also an implementation which does not use extra space to merge the arrays.
    private func mergeSortedArraysUsingExtraSpace(_ numbersArray: inout [Int], low: Int, mid: Int, high: Int) {
        var sortedArray = [Int]()
        var i = low
        var j = mid + 1
        while (i <= mid && j <= high) {
            if numbersArray[i] <= numbersArray[j] {
                sortedArray.append(numbersArray[i])
                i += 1
            } else {
                sortedArray.append(numbersArray[j])
                j += 1
            }
        }
        
        while i <= mid {
            sortedArray.append(numbersArray[i])
            i += 1
        }
        
        while j <= high {
            sortedArray.append(numbersArray[j])
            j += 1
        }
        
        var sortedArrayIndex = 0
        for index in low ... high {
            numbersArray[index] = sortedArray[sortedArrayIndex]
            sortedArrayIndex += 1
        }
    }
    
}
