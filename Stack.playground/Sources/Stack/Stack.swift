import Foundation

// Stacks to solve problems related to SEARCH TREE AND GRAPH
// MAZE PROBLEM.
// RIVER FLOW.
// Push all the the possibke descion onto stack, if you reach dead end; simply backtrack by popping from the stack and continue till you reach dead end or find solution.

public struct Stack<Element> {
    private var elements = [Element]()
    
    public mutating func push(_ element: Element) {
        elements.append(element)
    }
    
    public mutating func pop()-> Element? {
        elements.popLast()
    }
    
    public func peek()-> Element? {
        elements.last
    }
    
    public func isEmpty()-> Bool {
        elements.isEmpty
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        "Stack items are :\n" + elements.map({"\($0)"}).reversed().joined(separator: "\n")
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral items: Element...) {
        elements = items
    }
}


extension Array {
    var isNotEmpty: Bool {
        !isEmpty
    }
}

