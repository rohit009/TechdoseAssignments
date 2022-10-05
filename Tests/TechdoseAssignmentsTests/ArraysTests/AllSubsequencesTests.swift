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
        let sortedOutput = TestHelpers.sort2DArray(inputArray: output)

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
        let sortedOutput = TestHelpers.sort2DArray(inputArray: output)

        XCTAssertEqual(sortedOutput, expectedOutput)
    }
}

