import Foundation

// Brute-force: Check all pairs
// Time Complexity: O(n²)
// Space Complexity: O(1)

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[i] + nums[j] == target {
                return [i, j]
            }
        }
    }
    return []
}


// Two-pointer approach (requires sorting)
// Time Complexity: O(n log n) for sorting
// Space Complexity: O(n) due to sorting a copy

func twoSum1(_ nums: [Int], _ target: Int) -> [Int] {
    // Store the original indices
    let indexedNums = nums.enumerated().map { ($0, $1) }
    let sortedNums = indexedNums.sorted { $0.1 < $1.1 }  // sort by value

    var left = 0
    var right = nums.count - 1

    while left < right {
        let sum = sortedNums[left].1 + sortedNums[right].1
        if sum == target {
            return [sortedNums[left].0, sortedNums[right].0]
        } else if sum < target {
            left += 1
        } else {
            right -= 1
        }
    }
    return []
}

// Hash map approach
// Time Complexity: O(n)
// Space Complexity: O(n)

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    var numDict = [Int: Int]()  // value -> index

    for (index, value) in nums.enumerated() {
        let complement = target - value
        if let matchIndex = numDict[complement] {
            return [matchIndex, index]
        }
        numDict[value] = index
    }
    return []
}
