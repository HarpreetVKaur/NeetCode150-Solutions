//: [Previous](@previous)

// Function to check if a given string is a palindrome
func isPalindrome(_ s: String) -> Bool {

    // Normalize the string:
    // 1. Convert all characters to lowercase
    // 2. Keep only letters and numbers (ignore spaces, punctuation, etc.)
    let normalized = s.lowercased().filter { $0.isLetter || $0.isNumber }

    // Convert the normalized string into an array of characters
    var arr = Array(normalized)

    // Set up two pointers:
    // 'left' starts at the beginning, 'right' starts at the end
    var left = 0
    var right = arr.count - 1

    // Loop until the two pointers cross each other
    while left <= right {

        // If characters at left and right don't match → not a palindrome
        if arr[left] != arr[right] {
            return false
        }

        // Move left pointer forward and right pointer backward
        left += 1
        right -= 1
    }

    // If all matching checks pass → it is a palindrome
    return true
}

//: [Next](@next)
