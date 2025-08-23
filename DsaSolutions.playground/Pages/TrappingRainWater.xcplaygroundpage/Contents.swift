//: [Previous](@previous)

import Foundation

/// Returns total trapped rain water for the given elevation map.
/// - Complexity: O(n) time, O(1) extra space.
func trap(_ height: [Int]) -> Int {
    let n = height.count
    guard n > 2 else { return 0 }

    var left = 0
    var right = n - 1
    var leftMax = 0
    var rightMax = 0
    var water = 0

    while left < right {
        if height[left] < height[right] {
            // Right side is at least as tall; leftMax dictates water on left.
            if height[left] >= leftMax {
                leftMax = height[left]
            } else {
                water += leftMax - height[left]
            }
            left += 1
        } else {
            // Left side is at least as tall; rightMax dictates water on right.
            if height[right] >= rightMax {
                rightMax = height[right]
            } else {
                water += rightMax - height[right]
            }
            right -= 1
        }
    }

    return water
}

let sample = [0,1,0,2,1,0,1,3,2,1,2,1]
print(trap(sample)) 

//: [Next](@next)
