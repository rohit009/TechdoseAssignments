//  CountIn2ndArray.swift
//  Created by Rohit Patil on 01/10/22.
import Foundation


// Q: For each element in 1st array count elements less than or equal to it in 2nd array
// https://www.geeksforgeeks.org/element-1st-array-count-elements-less-equal-2nd-array/
// Note: Did not follow complete question as is. 
/*
 Ex:
 Input : arr1[] = [1, 2, 3, 4, 7, 9]
         arr2[] = [0, 1, 2, 1, 1, 4]
 Output : [4, 5, 5, 6, 6, 6]
 */
class CountIn2ndArray {

    public func countOf(firstNumbers: [Int], in secondNumbers: [Int]) -> [Int] {
        let firstArray = firstNumbers.sorted()
        let secondArray = secondNumbers.sorted()
        
        var pointer1 = 0
        var pointer2 = 0
        
        var lessCountNumbers = [Int]()
        while pointer1 < firstArray.count {
            
            var secondArrayElement = 0
            if pointer2 < secondArray.count {
                secondArrayElement = secondArray[pointer2]
            } else {
                secondArrayElement = secondArray.last ?? 0
            }
            
            if firstArray[pointer1] >= secondArrayElement && pointer2 < secondArray.count{
                pointer2 += 1
            } else {
                lessCountNumbers.append(pointer2)
                pointer1 += 1
            }
        }
        
        return lessCountNumbers
    }
}
