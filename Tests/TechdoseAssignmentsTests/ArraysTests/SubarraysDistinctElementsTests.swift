//  SubarraysDistinctElementsTests.swift
//  Created by Rohit Patil on 09/10/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class SubarraysDistinctElementsTests: XCTestCase {
    
    func testSubarraysDistinctElements_Input1() {
        let numbers = [2, 1, 3, 2, 4]
        let kDistinctElements = 2
        let expectedOutput = 9
        
        let output = SubarraysDistinctElements().numberOfSubarraysHaving(
            kDistinctElements: kDistinctElements,
            in: numbers
        )
        
        XCTAssertEqual(output, expectedOutput)
    }

    // Test case not working.
    func testSubarraysDistinctElements_Input2() {
        let numbers = [1, 2, 3, 1]
        let kDistinctElements = 3
        let expectedOutput = 10
        
        let output = SubarraysDistinctElements().numberOfSubarraysHaving(
            kDistinctElements: kDistinctElements,
            in: numbers
        )
        
        XCTAssertEqual(output, expectedOutput)
    }
        
}

