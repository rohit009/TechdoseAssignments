//  MaxSpreadSubarraysTests.swift
//  Created by Rohit Patil on 11/10/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class MaxSpreadSubarraysTests: XCTestCase {
    
    func testMaxSpreadSubarraysCount_Input1() {
        let numbers = [1, 5, 3, 2]
        let maxMinDifference = 2
        let expectedOutput = 6
        
        let output = MaxSpreadSubarrays().countSubarrays(numbers: numbers, maxMinDifference: maxMinDifference)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testMaxSpreadSubarraysCount_Input2() {
        let numbers = [1, 5, 3, 2]
        let maxMinDifference = 3
        let expectedOutput = 7
        
        let output = MaxSpreadSubarrays().countSubarrays(numbers: numbers, maxMinDifference: maxMinDifference)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testMaxSpreadSubarraysLength_Input1() {
        let numbers = [1, 5, 3, 2]
        let maxMinDifference = 2
        let expectedOutput = 2
        
        let output = MaxSpreadSubarrays().lengthOfLongestSubarray(numbers: numbers, maxMinDifference: maxMinDifference)
        
        XCTAssertEqual(output, expectedOutput)
    }

    func testMaxSpreadSubarraysLength_Input2() {
        let numbers = [1, 5, 3, 2]
        let maxMinDifference = 4
        let expectedOutput = 4
        
        let output = MaxSpreadSubarrays().lengthOfLongestSubarray(numbers: numbers, maxMinDifference: maxMinDifference)
        
        XCTAssertEqual(output, expectedOutput)
    }

}
