//: [Previous](@previous)

import Foundation

func isValid(_ s: String) -> Bool {
    // Dictionary mapping opening brackets to their corresponding closing brackets
    let parenthesesDict: [Character: Character] = ["{":"}", "[":"]", "(":")"]

    // Stack to keep track of expected closing brackets
    var stack = [Character]()

    // Traverse each character in the input string
    for char in s {
        if let closing = parenthesesDict[char] {
            // If it's an opening bracket, push the corresponding closing bracket onto the stack
            stack.append(closing)
        } else {
            // If it's a closing bracket:
            // 1. Stack must not be empty
            // 2. The top of the stack must match the current closing bracket
            if stack.isEmpty || stack.removeLast() != char {
                return false
            }
        }
    }

    // If stack is empty at the end, all brackets matched correctly
    return stack.isEmpty
}

let s = "({[]})"
print(isValid(s))

// ✅ Complexity Analysis
// Time Complexity:
// We iterate through each character in s exactly once → O(n),
// where n is the length of the string.
// stack.append() and stack.removeLast() are O(1) operations.
// Space Complexity:
// In the worst case (all opening brackets), the stack can hold up to n characters.
// So → O(n) auxiliary space.

//: [Next](@next)
