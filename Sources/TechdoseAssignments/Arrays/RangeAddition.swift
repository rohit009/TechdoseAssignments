//  RangeAddition.swift
//  Created by Rohit Patil on 04/09/22.
import Foundation

class RangeAdditionQuery {
    public let startIndex: Int
    public let endIndex: Int
    public let additionValue: Int
    
    public init(startIndex: Int, endIndex: Int, additionValue: Int) {
        self.startIndex = startIndex
        self.endIndex = endIndex
        self.additionValue = additionValue
    }
}

// Implementation of range addition/sum problem. Aim is to make constant time range add operation on an array.
// Concept used: Gradient array / difference array.
// https://www.geeksforgeeks.org/constant-time-range-add-operation-array/
class RangeAddition {
    
    public func performRangeAddition(on initialArray: [Int], queries: [RangeAdditionQuery]) -> [Int] {
        guard let firstNumber = initialArray.first else {
            // If the first element is empty then the array is empty.
            return initialArray
        }
        
        // Creation of difference array.
        var differenceArray = [Int]()
        differenceArray.append(firstNumber)
        for index in 1 ..< initialArray.count {
            let differenceFromPrevious = initialArray[index] - initialArray[index - 1]
            differenceArray.append(differenceFromPrevious)
        }
        
        // Handling queries
        for query in queries {
            guard query.startIndex <= query.endIndex else {
                continue
            }
            
            if query.startIndex < differenceArray.count {
                differenceArray[query.startIndex] += query.additionValue
            }
            
            let decreaseIndex = query.endIndex + 1
            if decreaseIndex < differenceArray.count {
                differenceArray[decreaseIndex] -= query.additionValue
            }
        }
        
        // Conversion from difference array into normal array. This will be the updated array.
        var updatedArray = [Int]()
        updatedArray.append(differenceArray.first ?? 0)  // Upto this point the difference array should not be empty.
        for index in 1 ..< differenceArray.count {
            let additionFromPrevious = differenceArray[index] + updatedArray[index - 1]
            updatedArray.append(additionFromPrevious)
        }
        
        return updatedArray
    }
}
