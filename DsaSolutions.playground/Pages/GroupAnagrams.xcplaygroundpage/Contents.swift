import Foundation

// Space: O(N), Time: O(N * K log K), where K is the average length of strings
func groupAnagrams(_ strs: [String]) -> [[String]] {
    var returnDict = [String: [String]]()

    for str in strs {
        let sortedStr = String(str.sorted())
        returnDict[sortedStr, default: []].append(str)
    }

    return Array(returnDict.values)
}

// Test case
let strs = ["eat", "tea", "tan", "ate", "nat", "bat"]

let result = groupAnagrams(strs)
print(result)
