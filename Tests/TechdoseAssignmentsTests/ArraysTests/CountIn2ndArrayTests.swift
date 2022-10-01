//  CountIn2ndArrayTests.swift
//  Created by Rohit Patil on 01/10/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

// WIP
class CountIn2ndArrayTests: XCTestCase {
    
    func testCountIn2ndArray_Input1() {
        let nums1 = [1, 2, 3, 4, 7, 9]
        let nums2 = [0, 1, 2, 1, 1, 4]
        let expectedOutput = [4, 5, 5, 6, 6, 6]
        
        let output = CountIn2ndArray().countOf(firstNumbers: nums1, in: nums2)
        
        XCTAssertEqual(output, expectedOutput)
    }

}

