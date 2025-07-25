import Foundation

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var returnArray = [Int]()
    var numDict = [Int:Int]()

    for num in nums {
        numDict[num, default: 0] += 1
    }
    let sortedDict = numDict.sorted { $0.value > $1.value }
    for i in 0 ..< k {
        returnArray.append(sortedDict[i].key)
    }
    return returnArray
}

let nums = [1,1,1,2,2,3], k = 2
print(topKFrequent(nums, k))
