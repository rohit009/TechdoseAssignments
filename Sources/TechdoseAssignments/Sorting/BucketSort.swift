//  BucketSort.swift
//  Created by Rohit Patil on 07/07/22.
import Foundation

// Bucket sort algorithm implementation.
class BucketSort: SortingHandler {
    let numberOfBuckets = 3
    
    func sort(_ numbersArray: [Int]) -> [Int] {
        // Empty and single element arrays are already sorted.
        if numbersArray.count < 2 {
            return numbersArray
        }

        // Step-1: Find the max and min values.
        guard let max = numbersArray.max(), let min = numbersArray.min() else {
            return numbersArray
        }
        
        // Step-2: Find the range based on the decided number of buckets.
        var buckets = [[Int]]()
        for _ in 1 ... numberOfBuckets {
            buckets.append([Int]())
        }
        
        // Step-3: Insert values in buckets with insertion sort.
        let insertionSortHandler = InsertionSort()
        for number in numbersArray {
            let bucketIndex = Int((number - min) / numberOfBuckets)
            insertionSortHandler.insertionSort(&buckets[bucketIndex], numberToInsert: number)
        }
        
        // Step-4: Create the sorted array by linking all buckets.
        var sortedArray = [Int]()
        for bucket in buckets {
            sortedArray.append(contentsOf: bucket)
        }
        
        return sortedArray
    }
}
