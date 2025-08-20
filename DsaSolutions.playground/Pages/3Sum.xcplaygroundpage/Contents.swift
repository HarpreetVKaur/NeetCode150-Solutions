//: [Previous](@previous)

func threeSum(_ nums: [Int]) -> [[Int]] {
    let nums = nums.sorted()          // Step 1: Sort the array
    var result = [[Int]]()            // Final result container

    for i in 0 ..< nums.count {
        // Skip duplicate values for i to avoid duplicate triplets
        if i > 0 && nums[i] == nums[i - 1] { continue }

        var left = i + 1              // Left pointer (just after i)
        var right = nums.count - 1    // Right pointer (end of array)

        while left < right {
            let sum = nums[i] + nums[left] + nums[right]

            if sum == 0 {
                // Found a triplet that sums to zero
                result.append([nums[i], nums[left], nums[right]])

                // Skip duplicates for left pointer
                while left < right && nums[left] == nums[left + 1] {
                    left += 1
                }
                // Skip duplicates for right pointer
                while left < right && nums[right] == nums[right - 1] {
                    right -= 1
                }

                // Move both pointers inward after storing triplet
                left += 1
                right -= 1
            } else if sum < 0 {
                // If sum is too small, increase it by moving left pointer
                left += 1
            } else {
                // If sum is too large, decrease it by moving right pointer
                right -= 1
            }
        }
    }

    return result
}

let nums = [-1, 0, 1, 2, -1, -4]
print(threeSum(nums))

//⏱ Time Complexity
//Sorting: O(n log n)
//Outer loop: O(n)
//Inner two-pointer loop: O(n) for each i
//Total: O(n²) (dominant term)
//💾 Space Complexity
//Result storage excluded: O(1) extra (just a few pointers and loop vars).
//Including result: O(k) where k is the number of valid triplets.

//: [Next](@next)
