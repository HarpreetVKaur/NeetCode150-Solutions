//: [Previous](@previous)

import Foundation

// https://leetcode.com/problems/contains-duplicate/description/

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set : Set<Int> = []

        for num in nums {
            if set.contains(num) {
                return true
            } else {
                set.insert(num)
            }
        }
        return false
    }
}

let solution = Solution()
let nums = [1, 2, 3, 4, 1]
print(solution.containsDuplicate(nums)) // true

let noDupes = [5, 6, 7, 8]
print(solution.containsDuplicate(noDupes)) // false

//: [Next](@next)
