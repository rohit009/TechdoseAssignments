//  RadixSortTests.swift
//  Created by Rohit Patil on 07/07/22.
import XCTest

@testable import TechdoseAssignments

class RadixSortTests: XCTestCase {
    
    var sortingHandler: SortingHandler!
    
    override func setUp() {
        sortingHandler = RadixSort()
    }
    
    func testSorting_Input1() {
        let numbers = sortingHandler.sort([1, 4, 2, 5, 7, 1, 2])
        
        XCTAssertEqual(numbers, [1, 1, 2, 2, 4, 5, 7])
    }
    
    func testSorting_Input2() {
        let numbers = sortingHandler.sort([])

        XCTAssertEqual(numbers, [])
    }

    func testSorting_Input3() {
        let numbers = sortingHandler.sort([1])

        XCTAssertEqual(numbers, [1])
    }

    func testSorting_Input4() {
        let numbers = sortingHandler.sort([3, 1])

        XCTAssertEqual(numbers, [1, 3])
    }

    func testSorting_Input5() {
        let numbers = sortingHandler.sort([8, 6, 4, 2, 1])

        XCTAssertEqual(numbers, [1, 2, 4, 6, 8])
    }

    func testSorting_Input6() {
        let numbers = sortingHandler.sort([5, 1, 4, 2, 8])

        XCTAssertEqual(numbers, [1, 2, 4, 5, 8])
    }
    
    func testSorting_Input7_TwoDigits() {
        let input = [20, 14, 8, 20, 11, 66, 3]
        let numbers = sortingHandler.sort(input)

        XCTAssertEqual(numbers, [3, 8, 11, 14, 20, 20, 66])
    }

    func testSorting_Input8_ThreeDigits() {
        let input = [301, 102, 1, 898, 205, 113, 667, 59]
        let numbers = sortingHandler.sort(input)

        XCTAssertEqual(numbers, [1, 59, 102, 113, 205, 301, 667, 898])
    }
}
