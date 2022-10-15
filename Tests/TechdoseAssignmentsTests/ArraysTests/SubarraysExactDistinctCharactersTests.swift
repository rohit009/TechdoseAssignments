//  SubarraysExactDistinctCharactersTests.swift
//  Created by Rohit Patil on 15/10/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class SubarraysExactDistinctCharactersTests: XCTestCase {
    
    func testSubarraysDistinctElements_Input1() {
        let string = "aabbcc"
        let kDistinctCharacters = 1
        let expectedOutput = 2
        
        let output = SubarraysExactDistinctCharacters().longestSubstringLength(
            string: string,
            kDistinctCharacters: kDistinctCharacters
        )
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testSubarraysDistinctElements_Input2() {
        let string = "aabbcc"
        let kDistinctCharacters = 2
        let expectedOutput = 4
        
        let output = SubarraysExactDistinctCharacters().longestSubstringLength(
            string: string,
            kDistinctCharacters: kDistinctCharacters
        )
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testSubarraysDistinctElements_Input3() {
        let string = "aabbcc"
        let kDistinctCharacters = 3
        let expectedOutput = 6
        
        let output = SubarraysExactDistinctCharacters().longestSubstringLength(
            string: string,
            kDistinctCharacters: kDistinctCharacters
        )
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testSubarraysDistinctElements_Input4() {
        let string = "aaabbb"
        let kDistinctCharacters = 3
        let expectedOutput = 0
        
        let output = SubarraysExactDistinctCharacters().longestSubstringLength(
            string: string,
            kDistinctCharacters: kDistinctCharacters
        )
        
        XCTAssertEqual(output, expectedOutput)
    }

}

