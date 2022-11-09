//  MaximumSumSubarrayTests.swift
//  Created by Rohit Patil on 09/11/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class MaximumSumSubarrayTests: XCTestCase {
    
    func testMaximumSumSubarray_Input1() {
        let nums = [5,4,-1,7,8]
        let expectedOutput = 23
        
        let output = MaximumSumSubarray().maxSubArray(nums)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testMaximumSumSubarray_Input2() {
        let nums = [1]
        let expectedOutput = 1
        
        let output = MaximumSumSubarray().maxSubArray(nums)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testMaximumSumSubarray_Input3() {
        let nums = [-2,1,-3,4,-1,2,1,-5,4]
        let expectedOutput = 6
        
        let output = MaximumSumSubarray().maxSubArray(nums)
        
        XCTAssertEqual(output, expectedOutput)
    }

    
    func testMaximumSumSubarray_Input4() {
        let nums = [-2, -3, 4, -1, -2, 1, 5, -3]
        let expectedOutput = 7
        
        let output = MaximumSumSubarray().maxSubArray(nums)
        
        XCTAssertEqual(output, expectedOutput)
    }

}

