//  AllSubsequencesTests.swift
//  Created by Rohit Patil on 12/08/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class AllSubsequencesTests: XCTestCase {
    
    func testAllSubsequences_Input1() {
        let numbers = [1, 2]
        let expectedOutput = [
            [],
            [1],
            [2],
            [1, 2],
        ]
        let output = AllSubsequences().allSubSequences(numbers: numbers)
        let sortedOutput = sort2DArray(inputArray: output)

        XCTAssertEqual(sortedOutput, expectedOutput)
    }
    
    func testAllSubsequences_Input2() {
        let numbers = [1, 2, 3]
        let expectedOutput = [
            [],
            [1],
            [2],
            [3],
            [1, 2],
            [1, 3],
            [2, 3],
            [1, 2, 3],
        ]
        let output = AllSubsequences().allSubSequences(numbers: numbers)
        let sortedOutput = sort2DArray(inputArray: output)

        XCTAssertEqual(sortedOutput, expectedOutput)
    }

    func sort2DArray(inputArray: [[Int]]) -> [[Int]] {
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

