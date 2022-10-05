//  MinimumSizeSubarraySumTests.swift
//  Created by Rohit Patil on 05/10/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class MinimumSizeSubarraySumTests: XCTestCase {
    
    func testAllSubsequences_Input1() {
        let numbers = [2,3,1,2,4,3]
        let target = 7
        let expectedOutput = 2
        
        let output = MinimumSizeSubarraySum().minimumLengthSubArraySum(targetSum: target, numbers: numbers)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testAllSubsequences_Input2() {
        let numbers = [1,4,4]
        let target = 4
        let expectedOutput = 1
        
        let output = MinimumSizeSubarraySum().minimumLengthSubArraySum(targetSum: target, numbers: numbers)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testAllSubsequences_Input3() {
        let numbers = [1,1,1,1,1,1,1,1]
        let target = 11
        let expectedOutput = 0
        
        let output = MinimumSizeSubarraySum().minimumLengthSubArraySum(targetSum: target, numbers: numbers)
        XCTAssertEqual(output, expectedOutput)
    }

}

