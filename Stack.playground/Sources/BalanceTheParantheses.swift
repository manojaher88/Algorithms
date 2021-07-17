import Foundation

public func balanceTheParentheses(string: String)-> Bool {
    guard !string.isEmpty else { return true }
    let characters = Array(string)
    var stack = Stack<Character>()
    for char in characters {
        if char == "(" {
            stack.push("(")
        } else if char == ")" {
            if stack.pop() == nil {
                return false
            }
        }
    }
    return stack.isEmpty()
}

// time complexity = O(n)
// space complexity = O(n)
