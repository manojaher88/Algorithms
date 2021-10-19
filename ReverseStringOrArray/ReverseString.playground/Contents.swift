import UIKit

var greeting = "Hello, playground"

func reverseString(str: String)-> String {
    guard !str.isEmpty else { return str }

    var array = Array(str)
    var i = 0
    var j = array.count - 1
    
    while i < j {
        array.swapAt(i, j)
        i += 1
        j -= 1
    }
    return String(array)
}

print(reverseString(str: "manoj"))


// Simplest way
let string = "manoj".reduce("") {
    "\($1)" + "\($0)"
}
print(string)

// Simplest way
let array: [Any] = [1, 2, 4, 5, 8, "Hi"]
let newArray = array.reduce([], {
    [$1] + $0
})

print(newArray)
