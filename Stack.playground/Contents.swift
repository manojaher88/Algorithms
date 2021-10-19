import Foundation

//var stack = Stack<Int>()
//stack.push(1)
//stack.push(2)
//stack.push(3)
//stack.push(4)
//
//// StringConvertiable
//print(stack.description)
//
//// ExpressibleByArrayLiteral
//var stack2 = Stack(arrayLiteral: 1.0, 2.0, 3.0)
//stack2.pop()
//stack.pop()
//stack.pop()
//stack.pop()

/**
 Reverse an array
 */
// reverseFunction()

/**
 Balance the parentheses
 */
// print(balanceTheParentheses(string: "((1 + 2) * 3)"))
// print(balanceTheParentheses(string: "((1 + 2) * 3)("))
// print(balanceTheParentheses(string: "((1 + 2) * 3)))"))


// QUEUE
let node3 = Node(value: 3, nextNode: nil)
let node2 = Node(value: 2, nextNode: node3)
let node1 = Node(value: 1, nextNode: node2)

//print(node1.description)


var list = LinkedList<Int>()
list.push(value: 1)
list.push(value: 2)
list.push(value: 3)
list.push(value: 4)

list.append(value: 5)
list.append(value: 6)
list.append(value: 7)
list.append(value: 8)

print(list.description)

