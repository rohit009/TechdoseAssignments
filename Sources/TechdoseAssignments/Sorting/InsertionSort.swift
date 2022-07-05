//
//  InsertionSort.swift
//  
//
//  Created by Rohit Patil on 05/07/22.
//
import Foundation

// Insertion sort algorithm implementation.
// It adds one by one each number from the test case in the sorted array.
// This is also used for maintaining a sorted data stream.
class InsertionSort: AdditionalSortingHandler {
    func sort(_ numbersArray: [Int]) -> [Int] {
        // Initially keeping the sorted array empty, insert one by one each number in the sorted array.
        var sortedNumbers = [Int]()
        for number in numbersArray {
            insertionSort(&sortedNumbers, numberToInsert: number)
        }
        
        return sortedNumbers
    }
    
    func sort(_ additionalNumbers: [Int], sortedNumber: [Int]) -> [Int] {
        var sortedNumbers = sortedNumber
        for number in additionalNumbers {
            insertionSort(&sortedNumbers, numberToInsert: number)
        }
        
        return sortedNumbers
    }
    
    private func insertionSort(_ sortedNumbers: inout [Int], numberToInsert: Int) {
        if sortedNumbers.isEmpty {
            sortedNumbers.append(numberToInsert)
            return
        }
        
        // Iterate the array in reverse and find the appropriate index in which the new number can be inserted.
        var insertionIndex = sortedNumbers.endIndex
        for number in sortedNumbers.reversed() {
            if number <= numberToInsert {
                break
            }
            
            insertionIndex -= 1
        }

        sortedNumbers.insert(numberToInsert, at: insertionIndex)
    }
}
