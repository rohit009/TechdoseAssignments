//  File.swift
//  Created by Rohit Patil on 01/10/22.
import Foundation

class MergeArrays {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var index1 = 0
        var index2 = 0
        
        while index1 < (m + n) && index2 < n {
            let shouldIgnoreZeros = index1 >= m && nums1[index1] == 0
            
            if nums1[index1] > nums2[index2] || shouldIgnoreZeros {
                nums1.insert(nums2[index2], at: index1)
                nums1.removeLast()
                index2 += 1
            }
            
            index1 += 1
        }
    }
}
