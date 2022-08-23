//  ClosestSubsequenceSumTests.swift
//  Created by Rohit Patil on 23/08/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class ClosestSubsequenceSumTests: XCTestCase {
    
    func testClosestSubsequenceSum_Input1() {
        let nums = [5,-7,3,5]
        let goal = 6
        let expectedOutput = 0
        
        let output = ClosestSubsequenceSum().minAbsDifference(nums, goal)

        XCTAssertEqual(output, expectedOutput)
    }
    
    func testClosestSubsequenceSum_Input2() {
        let nums = [7,-9,15,-2]
        let goal = -5
        let expectedOutput = 1
        
        let output = ClosestSubsequenceSum().minAbsDifference(nums, goal)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testClosestSubsequenceSum_Input3() {
        let nums = [1,2,3]
        let goal = -7
        let expectedOutput = 7
        
        let output = ClosestSubsequenceSum().minAbsDifference(nums, goal)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
}

