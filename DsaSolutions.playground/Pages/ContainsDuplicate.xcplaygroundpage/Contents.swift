//: [Previous](@previous)

import Foundation

// https://leetcode.com/problems/contains-duplicate/description/

class Solution {
    // with Set it has O(N) space and O(n) time complexity
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
    // with Dictionary it has O(N) space and O(n) time complexity
    func containsDuplicate2(_ nums: [Int]) -> Bool {
        var dict : [Int: Int] = [:]

        for num in nums {
            if dict[num] == 1 {
                return true
            }
            dict[num, default:0] += 1
        }
        return false
    }
}

let solution = Solution()
let nums = [1, 2, 3, 4, 1]
print(solution.containsDuplicate(nums)) // true
print(solution.containsDuplicate2(nums)) // true

let noDupes = [5, 6, 7, 8]
print(solution.containsDuplicate(noDupes)) // false
print(solution.containsDuplicate2(noDupes)) // false

//: [Next](@next)
