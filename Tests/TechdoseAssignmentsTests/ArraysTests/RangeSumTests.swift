//  RangeSumTests.swift
//  Created by Rohit Patil on 09/11/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class RangeSumTests: XCTestCase {
    
    func testRangeSum_Input1() {
        let nums = [-2, 0, 3, -5, 2, -1]
        let rangeSumHandler = RangeSum(nums)

        let output1 = rangeSumHandler.sumRange(0, 2)
        let expectedOutput1 = 1
        
        XCTAssertEqual(output1, expectedOutput1)
        
        let output2 = rangeSumHandler.sumRange(2, 5)
        let expectedOutput2 = -1
        
        XCTAssertEqual(output2, expectedOutput2)
        
        let output3 = rangeSumHandler.sumRange(0, 5)
        let expectedOutput3 = -3
        
        XCTAssertEqual(output3, expectedOutput3)
        
        let output4 = rangeSumHandler.sumRange(3, 4)
        let expectedOutput4 = -3
        
        XCTAssertEqual(output4, expectedOutput4)
    }
    
    func testRangeSumWithUpdate_Input1() {
        let nums = [1, 3, 5]
        let rangeSumHandler = RangeSum(nums)

        let output1 = rangeSumHandler.sumRange(0, 2)
        let expectedOutput1 = 9
        
        XCTAssertEqual(output1, expectedOutput1)
        
        rangeSumHandler.update(1, 2)    // [1, 3, 5] => [1, 2, 5]
        
        let output2 = rangeSumHandler.sumRange(0, 2)
        let expectedOutput2 = 8
        
        XCTAssertEqual(output2, expectedOutput2)
        
        rangeSumHandler.update(0, 5)    // [1, 2, 5] => [5, 2, 5]
        
        let output3 = rangeSumHandler.sumRange(1, 2)
        let expectedOutput3 = 7
        
        XCTAssertEqual(output3, expectedOutput3)
    }

}

