//  RangeAdditionTests.swift
//  Created by Rohit Patil on 04/09/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class RangeAdditionTests: XCTestCase {
    
    func testRangeAddition_Input1() {
        let initialArray = [100, 200, 300, 400, 500, 600]
        
        let rangeAdditionQuery1 = RangeAdditionQuery(startIndex: 0, endIndex: 2, additionValue: 200)
        
        let expectedOutput = [300, 400, 500, 400, 500, 600]
        
        let output = RangeAddition().performRangeAddition(on: initialArray, queries: [ rangeAdditionQuery1 ])
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testRangeAddition_Input2() {
        let initialArray = [100, 200, 300, 400, 500, 600]
        
        let output = RangeAddition().performRangeAddition(
            on: initialArray,
            queries: [
                RangeAdditionQuery(startIndex: 0, endIndex: 2, additionValue: 200),
                RangeAdditionQuery(startIndex: 1, endIndex: 5, additionValue: 100),
                RangeAdditionQuery(startIndex: 2, endIndex: 3, additionValue: 100),
            ])
        
        let expectedOutput = [300, 500, 700, 600, 600, 700]
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testRangeAddition_Input3() {
        let initialArray = [100, 200, 300, 400, 500, 600]
        
        let output = RangeAddition().performRangeAddition(
            on: initialArray,
            queries: [
                RangeAdditionQuery(startIndex: 0, endIndex: 2, additionValue: 200),
                RangeAdditionQuery(startIndex: 2, endIndex: 2, additionValue: 400),
            ])
        
        let expectedOutput = [300, 400, 900, 400, 500, 600]
        
        XCTAssertEqual(output, expectedOutput)
    }
    
}

