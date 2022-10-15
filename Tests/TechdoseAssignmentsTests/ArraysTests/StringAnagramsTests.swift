//  StringAnagramsTests.swift
//  Created by Rohit Patil on 12/10/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class StringAnagramsTests: XCTestCase {
    
    func testStringAnagramsFindCount_Input1() {
        let targetString = "abab"
        let anagram = "ab"
        let expectedOutput = 3
        
        let outputCount = StringAnagrams().findCountOfAllAnagramsIn(targetString: targetString, anagram: anagram)
        XCTAssertEqual(outputCount, expectedOutput)
    }
    
    func testStringAnagramsFindAll_Input1() {
        let targetString = "abab"
        let anagram = "ab"
        let expectedOutput = [0, 1, 2]
        
        let outputCount = StringAnagrams().findAllAnagramsIn(targetString: targetString, anagram: anagram)
        XCTAssertEqual(outputCount, expectedOutput)
    }
        
    func testStringAnagramsFindAll_Input2() {
        let targetString = "cbaebabacd"
        let anagram = "abc"
        let expectedOutput = [0, 6]
        
        let outputCount = StringAnagrams().findAllAnagramsIn(targetString: targetString, anagram: anagram)
        XCTAssertEqual(outputCount, expectedOutput)
    }
    
    func testStringAnagramsFindAll_Input3() {
        let targetString = "aaaaaaaaaa"
        let anagram = "aaaaaaaaaaaaa"
        let expectedOutput = [Int]()
        
        let outputCount = StringAnagrams().findAllAnagramsIn(targetString: targetString, anagram: anagram)
        XCTAssertEqual(outputCount, expectedOutput)
    }

}
