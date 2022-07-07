//  BucketSortTests.swift
//  Created by Rohit Patil on 07/07/22.
import XCTest

@testable import TechdoseAssignments

class BucketSortTests: XCTestCase {
    
    var sortingHandler: SortingHandler!
    
    override func setUp() {
        sortingHandler = BucketSort()
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
}
