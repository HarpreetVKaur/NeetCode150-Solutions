//: [Previous](@previous)

import Foundation

//Time and space complexity both are O(N)

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var dict : [Character: Int] = [:]

        var sArray = Array(s)
        var tArray = Array(t)

        for val in sArray {
            dict[val, default: 0] += 1
        }

        for val in tArray {

            if var count = dict[val], count > 0 {
                dict[val] = count - 1
            } else {
                return false
            }
        }
        return true
    }
}

// Example 1:

let s = "anagram", t = "nagaram"

let solution = Solution()
print(solution.isAnagram(s, t))

// Example 2:

let s1 = "rat", t1 = "car"

print(solution.isAnagram(s1, t1))

//: [Next](@next)
