//: [Previous](@previous)

import Foundation

func evalRPN(_ tokens: [String]) -> Int {
    var stack = [Int]()   // stack to hold numbers during evaluation

    for token in tokens {
        if let num = Int(token) {
            // If token is a number, push it to the stack
            stack.append(num)
            continue
        }

        // Otherwise, token is an operator → we need at least 2 numbers
        guard stack.count >= 2 else { fatalError("RPN expression isn't valid.") }

        // Pop last two numbers (note: order matters for - and /)
        let sec = stack.removeLast()   // second operand
        let fir = stack.removeLast()   // first operand

        // Apply operator and push result back to stack
        switch token {
        case "+": stack.append(fir + sec)
        case "-": stack.append(fir - sec)
        case "*": stack.append(fir * sec)
        case "/": stack.append(fir / sec)   // integer division (Swift auto-truncates toward zero)
        default:
            fatalError("RPN expression isn't valid.")
        }
    }

    // At the end, only one number should remain → final answer
    guard stack.count == 1 else { fatalError("RPN expression isn't valid.") }
    return stack[0]
}

let tokens = ["2", "1", "+", "3", "*"]
print(evalRPN(tokens))

// ⏱ Complexity
// Time: O(n) (each token processed once)
// Space: O(n) (stack may hold up to n/2 numbers at some point)

//: [Next](@next)
