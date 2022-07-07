//
//  CountingSort.swift
//  
//
//  Created by Rohit Patil on 07/07/22.
//
import Foundation

// Counting sort algorithm implementation.
// It is a 3 step process, and sorts the array by counting the frequency of elements.
class CountingSort: SortingHandler {
    func sort(_ numbersArray: [Int]) -> [Int] {
        return countingSort(numbersArray, range: 0 ... 9)
    }
    
    func countingSort(_ numbersArray: [Int], range: ClosedRange<Int>) -> [Int] {
        // Empty and single element arrays are already sorted.
        if numbersArray.count < 2 {
            return numbersArray
        }
        
        // Step-1: Create count array.
        var countArray = Array(repeating: 0, count: range.count)
        for number in numbersArray {
            countArray[number] += 1
        }
        
        // Step-2: Create cumulative count array.
        var cumulativeArray = Array(countArray)
        for (index, _) in cumulativeArray.enumerated().dropFirst() {
            let previousIndex = index - 1
            cumulativeArray[index] += cumulativeArray[previousIndex]
        }
        
        // Step-3: From the cumulative array create the sorted array by using the value from
        // cumulative array as index of that in the sorted array.
        var sortedArray = Array(repeating: 0, count: numbersArray.count)
        for number in numbersArray.reversed() {
            // Converting the 1-based value to 0-based index.
            let sortedArrayIndex = cumulativeArray[number] - 1
            sortedArray[sortedArrayIndex] = number

            // Cumulative count is used so decrease by 1.
            cumulativeArray[number] -= 1
        }
        
        return sortedArray
    }

}
