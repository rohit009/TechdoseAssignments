//  InsertionHandlerTests.swift
//  Created by Rohit Patil on 05/07/22.
import XCTest

@testable import TechdoseAssignments

class InsertionSortTests: XCTestCase {
    
    var sortingHandler: AdditionalSortingHandler!
    
    override func setUp() {
        sortingHandler = InsertionSort()
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
    
    func testSorting_Input7_InsertInSortedArray() {
        let numbers = sortingHandler.sort([50, 10, 14, 3, 8], sortedNumber: [1, 2, 4, 7])

        XCTAssertEqual(numbers, [1, 2, 3, 4, 7, 8, 10, 14, 50])
    }
}
