/*
 * Compile: swiftc main.swift
 * Run: ./main
*/ 

import Foundation

func getFirstDuplicate(nums: [Int]) -> Int {
    var firstDup = -1
    var numSet = Set<Int>()
    var size = 0
    
    for num in nums {
        size = numSet.count
        numSet.insert(num)
        
        if size == numSet.count {
            firstDup = num
            break
        }
    }
    return firstDup
}

var a = [4, 2, 6, 2, 7, 9]
var dupVal = getFirstDuplicate(nums: a)
print(dupVal)