import Foundation

public class Node<Element> {
    public var nextNode: Node<Element>?
    public var value: Element
    
   public  init(value: Element, nextNode: Node<Element>?) {
        self.value = value
        self.nextNode = nextNode
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        String("\(value)--->\(nextNode?.description ?? "nil")")
    }
}


