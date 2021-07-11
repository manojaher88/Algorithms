import Foundation

private var map = [Int : Int]()
public func fib(at index: Int) -> Int {
    print(index)
    guard index > 2 else { return 1 }
    if let result = map[index] {
        return result
    }
    
    print("calculating \(index)")
    let result = fib(at: index - 1) + fib(at: index - 2)
    map[index] = result
    return result
}
