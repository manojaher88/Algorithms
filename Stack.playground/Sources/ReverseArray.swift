import Foundation

public func reverseFunction() {
    let array = [1, 2, 3, 4, 5, 6]
    var stack = Stack(arrayLiteral: 1, 2, 3, 4, 5, 6)
    for _ in 0..<array.count {
        print(stack.pop() ?? "Empty items")
    }
}

// time complexity = O(n)
// space complexity = O(n)
