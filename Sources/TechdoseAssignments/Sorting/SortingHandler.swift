//  SortingHandler.swift
//  Created by Rohit Patil on 25/06/22.
import Foundation

// Protocol to be confirmed by classes that implement sorting algorithms.
protocol SortingHandler {
    func sort(_ numbersArray: [Int]) -> [Int]
}

// Protocol to be confirmed by classes that implement sorting algorithms by adding elements in already sorted array.
protocol AdditionalSortingHandler: SortingHandler {
    func sort(_ additionalNumbers: [Int], sortedNumber: [Int]) -> [Int]
}
