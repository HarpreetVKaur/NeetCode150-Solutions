//: [Previous](@previous)

import Foundation

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    // Initialize two pointers
    var left = 0                     // start from the beginning of the array
    var right = numbers.count - 1    // start from the end of the array

    // Keep searching while left index does not cross right index
    while left <= right {
        let sum = numbers[left] + numbers[right]   // calculate the sum of the two current elements

        if sum == target {
            // If the sum matches the target, return the 1-based indices
            return [left + 1, right + 1]
        } else if sum > target {
            // If sum is too big, move the right pointer leftward to reduce the sum
            right -= 1
        } else {
            // If sum is too small, move the left pointer rightward to increase the sum
            left += 1
        }
    }

    // Return empty array if no solution is found (though the problem usually guarantees a solution)
    return []
}

//⏱ Time Complexity
//The while loop runs at most n steps (n = numbers.count) because either left moves forward or right moves backward in each iteration.
//✅ O(n)
//💾 Space Complexity
//Only a few integer variables (left, right, sum) are used.
//✅ O(1) (constant extra space)

let numbers = [2, 7, 11, 15]
let target = 9
print(twoSum(numbers, target))

//: [Next](@next)
