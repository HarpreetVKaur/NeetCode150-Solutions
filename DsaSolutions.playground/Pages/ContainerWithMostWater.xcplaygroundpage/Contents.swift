//: [Previous](@previous)

import Foundation

func maxArea(_ height: [Int]) -> Int {
    // Initialize two pointers: one at the start and one at the end of the array
    var left = 0
    var right = height.count - 1

    // Variable to keep track of the maximum area found so far
    var maxArea = 0

    // Keep checking until the two pointers meet
    while left < right {
        // Width is the distance between the two pointers
        let width = right - left

        // The height of the container is limited by the shorter line
        let minHeight = min(height[left], height[right])

        // Calculate the current area
        let area = width * minHeight

        // Update maxArea if we found a larger one
        maxArea = max(maxArea, area)

        // Move the pointer pointing to the shorter line inward
        // This is because moving the taller one won't help increase the height
        if height[left] < height[right] {
            left += 1  // Move left pointer forward
        } else {
            right -= 1 // Move right pointer backward
        }
    }

    // Return the maximum area found
    return maxArea
}

let height = [1,8,6,2,5,4,8,3,7]
print(maxArea(height))

//: [Next](@next)
