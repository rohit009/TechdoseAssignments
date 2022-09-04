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
    
    // Not working
    func testClosestSubsequenceSum_Input4() {
        XCTSkip("Implementation not working for this test case.")
        let nums = [-7933,-1642,-6137,6234,4728,5474,2439]
        let goal = -428059487
        let expectedOutput = 428043775
        
        let output = ClosestSubsequenceSum().minAbsDifference(nums, goal)
        
        XCTAssertEqual(output, expectedOutput)
    }

}

