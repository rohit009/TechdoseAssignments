//  MajorityElementTests.swift
//  Created by Rohit Patil on 31/10/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class MajorityElementTests: XCTestCase {
    
    func testMajorityElement_Input1() {
        let numbers = [3,2,3]
        let expectedOutput = 3
        
        let output = MajorityElement().findMajorityElement(numbers: numbers)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testMajorityElement_Input2() {
        let numbers = [3, 2, 3, 1, 3]
        let expectedOutput = 3
        
        let output = MajorityElement().findMajorityElement(numbers: numbers)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testMajorityElement_Input3() {
        let numbers = [2,2,1,1,1,2,2]
        let expectedOutput = 2
        
        let output = MajorityElement().findMajorityElement(numbers: numbers)
        
        XCTAssertEqual(output, expectedOutput)
    }

}
