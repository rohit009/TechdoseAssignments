//  CountingSort.swift
//  Created by Rohit Patil on 07/07/22.
import Foundation

// The handler used to consider a number for the given number before updating its position in array
// through counting sort.
// Ex usage: Used in radix sort to only consider a specific digit from the given number.
typealias ConsiderationHandler = (Int) -> Int

// Counting sort algorithm implementation.
// It is a 3 step process, and sorts the array by counting the frequency of elements.
class CountingSort: SortingHandler {
    func sort(_ numbersArray: [Int]) -> [Int] {
        return countingSort(numbersArray, range: 0 ... 9) { originalNumber in
            return originalNumber
        }
    }
    
    func countingSort(
        _ numbersArray: [Int],
        range: ClosedRange<Int>,
        considerationHandler: ConsiderationHandler
    ) -> [Int] {
        // Empty and single element arrays are already sorted.
        if numbersArray.count < 2 {
            return numbersArray
        }
        
        // Step-1: Create count array.
        var countArray = Array(repeating: 0, count: range.count)
        for consideredNumber in numbersArray.map({ considerationHandler($0) }) {
            countArray[consideredNumber] += 1
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
        for originalNumber in numbersArray.reversed() {
            // Converting the 1-based value to 0-based index based on the considered number as
            // index in cumulative array.
            let consideredNumber = considerationHandler(originalNumber)
            let sortedArrayIndex = cumulativeArray[consideredNumber] - 1

            // Put the original number in the sorted array.
            sortedArray[sortedArrayIndex] = originalNumber
            
            // Cumulative count is used so decrease by 1.
            cumulativeArray[consideredNumber] -= 1
        }
        
        return sortedArray
    }

}
