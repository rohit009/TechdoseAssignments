//  RadixSort.swift
//  Created by Rohit Patil on 07/07/22.
import Foundation

// Radix sort algorithm implementation.
// It does counting sort on all elements for the no. of digits in the max no. of the array.
class RadixSort: SortingHandler {
 
    func sort(_ numbersArray: [Int]) -> [Int] {
        // Empty and single element arrays are already sorted.
        if numbersArray.count < 2 {
            return numbersArray
        }

        // Step-1: Find the maximum number from the array. Find the number of digits in this max number.
        guard var maxNumber = numbersArray.max() else {
            return numbersArray
        }
        
        var numberOfDigits = 0
        while maxNumber > 0 {
            maxNumber = maxNumber / 10
            numberOfDigits += 1
        }
        
        // Step-2: Do counting sort for each digit and update the position of numbers.
        let countingSortHandler = CountingSort()
        var sortedArray = numbersArray
        for i in 0 ..< numberOfDigits {
            let devisionNumber = Int(truncating: pow(10, i) as NSNumber)
            
            sortedArray = countingSortHandler.countingSort(sortedArray, range: 0 ... 9) { originalNumber in
                // Compare for each digit of the elements, starting from units place to tens place
                // to 100s place and so on.
                return ((originalNumber / devisionNumber) % 10)
            }
        }
        
        return sortedArray
    }
    
    
}
