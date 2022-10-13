//  SlidingWindowFirstNegativeTests.swift
//  Created by Rohit Patil on 13/10/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class SlidingWindowFirstNegativeTests: XCTestCase {
    
    func testSlidingWindowFirstNegative_Input1() {
        let numbers = [12, -1, -7, 8, -15, 30, 16, 28]
        let kWindowSize = 3
        
        let expectedOutput = [-1, -1, -7, -15, -15, 0]

        let output = SlidingWindowFirstNegative().findFirstNegativeNumbers(from: numbers, kWindowSize: kWindowSize)
        
        XCTAssertEqual(output, expectedOutput)
    }

    func testSlidingWindowFirstNegative_Input2() {
        let numbers = [-8, 2, 3, -6, 10]
        let kWindowSize = 2
        
        let expectedOutput = [-8, 0, -6, -6]

        let output = SlidingWindowFirstNegative().findFirstNegativeNumbers(from: numbers, kWindowSize: kWindowSize)
        
        XCTAssertEqual(output, expectedOutput)
    }

    
    func testSlidingWindowFirstNegative_Input3() {
        let numbers = [0, -12, 5, -1, -4, -6, 87, 90, 21]
        let kWindowSize = 3
        
        let expectedOutput = [-12, -12, -1, -1, -4, -6, 0]

        let output = SlidingWindowFirstNegative().findFirstNegativeNumbers(from: numbers, kWindowSize: kWindowSize)
        
        XCTAssertEqual(output, expectedOutput)
    }


}

