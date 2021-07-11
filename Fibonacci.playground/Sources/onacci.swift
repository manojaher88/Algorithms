import Foundation

/**
 Geek-onacci Number
 Difficulty Level : Medium
 Last Updated : 30 Apr, 2021
 Given four integers A, B, C and N, where A, B, C represents the first three numbers of the geekonacci series, the task is to find the Nth term of the geekonacci series.

 The Nth term of the geekonacci series is the sum of its previous three terms in the series i.e., sum of (N – 1)th, (N – 2)th, and (N – 3)th geekonacci numbers.

 Input: A = 1, B = 3, C = 2, N = 4
 Output: 6
 Explanation: The geekonacci series is 1, 3, 2, 6, 11, 19, ……
 Therefore, the 4th geekonacci number is 6.

 Input: 5  3  7  9   19
 Output: 19
 */

//2 6 11 = 19
// f(n) = f(n - 1) + f(n - 2) + f(n-3)

// onacci 5 = onacci(4) + onacci(3) + onacci(2)
private var map = [Int : Int]()
let array = [1, 3, 2]
public func onacci(at index: Int) -> Int {
    guard index > 2 else { return array[index] }
    if let result = map[index] {
        return result
    }
    
    let result = onacci(at: index - 3) + onacci(at: index - 2) + onacci(at: index - 1)
    map[index] = result
    return result
}
