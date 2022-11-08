//  MajorityElementNByKTests.swift
//  Created by Rohit Patil on 08/11/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class MajorityElementNByKTests: XCTestCase {
    
    func testMajorityElements_Input1() {
        let numbers = [3,2,3]
        let expectedOutput = [3]
        let k = 3
        
        let output = MajorityElementNByK().findMajorityElements(numbers: numbers, k: k)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testMajorityElements_Input2() {
        let numbers = [1]
        let expectedOutput = [1]
        let k = 3
        
        let output = MajorityElementNByK().findMajorityElements(numbers: numbers, k: k)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testMajorityElements_Input3() {
        let numbers = [1,2]
        let expectedOutput = [1,2]
        let k = 3
        
        let output = MajorityElementNByK().findMajorityElements(numbers: numbers, k: k)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testMajorityElements_Input4() {
        let numbers = [1, 3, 4, 2, 1, 2, 1, 2, 1, 4]
        let expectedOutput = [1, 2]
        let k = 4
        
        let output = MajorityElementNByK().findMajorityElements(numbers: numbers, k: k)
        
        XCTAssertEqual(output, expectedOutput)
    }

}
