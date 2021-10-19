import Foundation

public struct LinkedList<Element> {
    public private(set) var head: Node<Element>?
    public private(set) var tail: Node<Element>?
    
    public init() {}
    
    public var isEmpty: Bool {
        head == nil
    }
}

// MARK: - Operations
extension LinkedList {
    public mutating func push(value: Element) {
        head = Node(value: value, nextNode: head)
        if tail == nil {
            tail = head
        }
    }
    
    public mutating func append(value: Element) {
        guard !isEmpty else {
            push(value: value)
            return
        }
        let node = Node(value: value, nextNode: nil)
        tail?.nextNode = node
        tail = node
    }
    
    public mutating func insert(at: Int, value: Element) {
        let _ = Node(value: value, nextNode: nil)
        
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        head?.description ?? "Empty list"
    }
}
