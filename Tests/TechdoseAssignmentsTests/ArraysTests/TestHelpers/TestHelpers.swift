//  TestHelpers.swift
//  Created by Rohit Patil on 05/10/22.
import Foundation

class TestHelpers {

    public static func sort2DArray(inputArray: [[Int]]) -> [[Int]] {
        return inputArray.sorted { array1, array2 in
            if array1.elementsEqual(array2) {
                return true
            } else if array1.count == array2.count {
                var sum1 = 0
                for number in array1 {
                    sum1 += number
                }
                var sum2 = 0
                for number in array2 {
                    sum2 += number
                }
                
                if sum1 <= sum2 {
                    return true
                } else {
                    return false
                }
            } else if array1.count < array2.count {
                return true
            } else {
                return false
            }
        }
    }

}
