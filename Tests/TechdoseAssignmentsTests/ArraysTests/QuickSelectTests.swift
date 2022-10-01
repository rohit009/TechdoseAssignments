//  File.swift
//  Created by Rohit Patil on 01/10/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class QuickSelectTests: XCTestCase {
    
    func testQuickSelect_Input1() {
        let kthLargest = 2
        let nums = [2 , -7, 3, 8, 1] // Sorted version: [-7, 1, 2, 3, 8]
        let expectedOutput = 3

        let output = QuickSelect().find(kthLargest: kthLargest, from: nums)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testQuickSelect_Input2() {
        let kthLargest = 3
        let nums = [1, 2, 4, 5, 6] // Sorted version: [1, 2, 4, 5, 6]
        let expectedOutput = 4

        let output = QuickSelect().find(kthLargest: kthLargest, from: nums)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testQuickSelect_Input3() {
        let kthLargest = 2
        let nums = [3, 5, 1, 78, 12, 98, -7, 125, 87] // Sorted version: [-7, 1, 3, 5, 12, 78, 87, 98, 125]
        let expectedOutput = 98

        let output = QuickSelect().find(kthLargest: kthLargest, from: nums)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
}

