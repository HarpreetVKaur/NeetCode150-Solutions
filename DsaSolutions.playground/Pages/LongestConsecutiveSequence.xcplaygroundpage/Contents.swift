import Foundation

func longestConsecutive(_ nums: [Int]) -> Int {
    var setNum = Set(nums)
    var maxStreak = 0

    for num in setNum {
        if !setNum.contains(num - 1) {
            var currentNum = num
            var currentStrek = 1

            while setNum.contains(currentNum + 1) {
                currentNum += 1
                currentStrek += 1
            }
            maxStreak = max(maxStreak, currentStrek)
        }
    }
    return maxStreak
}

let nums = [100,4,200,1,3,2]
print(longestConsecutive(nums))
