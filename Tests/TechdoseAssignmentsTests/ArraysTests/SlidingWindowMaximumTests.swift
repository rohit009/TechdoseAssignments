//  SlidingWindowMaximumTests.swift
//  Created by Rohit Patil on 12/10/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class SlidingWindowMaximumTests: XCTestCase {
    
    func testSlidingWindowMaximumInBuilt_Input1() {
        let numbers = [1,3,-1,-3,5,3,6,7]
        let kSlidingWindowSize = 3
        let expectedOutput = [3,3,5,5,6,7]
        
        let output = SlidingWindowMaximum().findAllMaxNumbersInBuilt(from: numbers, kSlidingWindowSize: kSlidingWindowSize)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testSlidingWindowMaximumInBuilt_Input2() {
        let numbers = [1]
        let kSlidingWindowSize = 1
        let expectedOutput = [1]
        
        let output = SlidingWindowMaximum().findAllMaxNumbersInBuilt(from: numbers, kSlidingWindowSize: kSlidingWindowSize)
        
        XCTAssertEqual(output, expectedOutput)
    }
        
}
