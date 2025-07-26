import Foundation

// Space id O(1) and time is also O(N)
// Output array result is not counted as extra space (since it's required for return).
func productExceptSelf(_ nums: [Int]) -> [Int] {

    var returnArray = Array(repeating: 1, count: nums.count)

    var left = 1
    for i in 0 ..< nums.count {
        returnArray[i] *= left
        left *= nums[i]
    }

    var right = 1
    for i in stride(from: nums.count - 1, to: -1, by: -1 ) {
        returnArray[i] *= right
        right *= nums[i]
    }
    return returnArray
}

let InputNums = [1,2,3,4]
print(productExceptSelf(InputNums))
