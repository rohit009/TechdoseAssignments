//  SubArraysGeneratorTests.swift
//  Created by Rohit Patil on 05/10/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class SubArraysGeneratorTests: XCTestCase {
    
    func testAllSubsequences_Input1() {
        let numbers = [1, 2, 3, 4]
        let expectedOutput = [
            [1], [2], [3], [4],
            [1, 2], [2, 3], [3, 4],
            [1, 2, 3], [2, 3, 4],
            [1, 2, 3, 4],
        ]

        let output = SubArraysGenerator().subArrays(of: numbers)
        let sortedOutput = TestHelpers.sort2DArray(inputArray: output)
        
        XCTAssertEqual(sortedOutput, expectedOutput)
    }

}

