//  MergeArrays.swift
//  Created by Rohit Patil on 01/10/22.
import Foundation
import XCTest

@testable import TechdoseAssignments

class MergeArraysTests: XCTestCase {
    
    func testMergeArrays_Input1() {
        var nums1 = [4,5,6,0,0,0]
        let previousNums1Length = nums1.count
        let m = 3
        let nums2 = [1,2,3]
        let n = 3
        
        MergeArrays().merge(&nums1, m, nums2, n)
        
        let sortedNums1 = nums1.sorted()
        XCTAssertEqual(nums1, sortedNums1)
        XCTAssertEqual(nums1.count, previousNums1Length)
    }
    
    func testMergeArrays_Input2() {
        var nums1 = [1,2,3,0,0,0]
        let previousNums1Length = nums1.count
        let m = 3
        let nums2 = [2,5,6]
        let n = 3
        
        MergeArrays().merge(&nums1, m, nums2, n)
        
        let sortedNums1 = nums1.sorted()
        XCTAssertEqual(nums1, sortedNums1)
        XCTAssertEqual(nums1.count, previousNums1Length)
    }

    func testMergeArrays_Input3() {
        var nums1 = [1]
        let previousNums1Length = nums1.count
        let m = 1
        let nums2 = [Int]()
        let n = 0
        
        MergeArrays().merge(&nums1, m, nums2, n)
        
        let sortedNums1 = nums1.sorted()
        XCTAssertEqual(nums1, sortedNums1)
        XCTAssertEqual(nums1.count, previousNums1Length)
    }

    func testMergeArrays_Input4() {
        var nums1 = [0]
        let previousNums1Length = nums1.count
        let m = 0
        let nums2 = [1]
        let n = 1
        
        MergeArrays().merge(&nums1, m, nums2, n)
        
        let sortedNums1 = nums1.sorted()
        XCTAssertEqual(nums1, sortedNums1)
        XCTAssertEqual(nums1.count, previousNums1Length)
    }

}

