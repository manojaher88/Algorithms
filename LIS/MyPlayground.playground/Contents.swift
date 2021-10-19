import UIKit

// let array = [3, 4, -1, 5, 8, 2, 3, 12, 7, 9, 10]
// 3    4   -1  5   8   2   3   12  7   9   10
// create lisArray [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
// check 3 withg prevoius value lisArray = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0]
// check 4 with all previous value and it should be less than current value = [1, 2, 0, 0, 0, 0, 0, 0, 0, 0]
// check -1 with all previous value which should be less than current value (i.e -1) and maxCount from lisArray = [1, 2, 1, 0, 0, 0, 0, 0, 0, 0]
// check 5 with all previous value which should be less than current value (i.e 5) and maxCount from lisArray = [1, 2, 1, 3, 0, 0, 0, 0, 0, 0]
// check 8 with all previous value which should be less than current value (i.e 8) and maxCount from lisArray = [1, 2, 1, 3, 4, 0, 0, 0, 0, 0]
// check 2 with all previous value which should be less than current value (i.e 2) and maxCount from lisArray = [1, 2, 1, 3, 4, 2, 0, 0, 0, 0]
//...
// check 10 with all previous value which should be less than current value (i.e 10) and maxCount from lisArray = [1, 2, 1, 3, 4, 2, 2, 5, 4, 5, 6]


// 3
//      3   -1  3   3   -1  -1  3   3   3   3
//      4       4   4   2   3   4   4   4   4
//              5   5           5   5   5   5
//                  8           8   7   7   7
//                              12      9   9
//                                          10

func lisExample(array: [Int]) -> Int {
    guard array.count > 0 else { return 0 }

    var maxSeq = 0
    var maxArray = Array(repeating: 0, count: array.count)
    for i in 0..<array.count {
        var maxCount = 0
        var j = 0
        let item = array[i]
        while (j < i) {
            if item > array[j] {
                maxCount = max(maxCount, maxArray[j])
            }
            j += 1
        }
        maxArray[i] = maxCount + 1
        maxSeq = max(maxSeq, maxArray[i])
    }
    return maxSeq
}

let array = [3, 4, -1, 5, 8, 2, 3, 12, 7, 9, 10]
print(lisExample(array: array))



// 2. 0(nlogn)

/* Logic
 nums = [3, 4, -1, 5, 8, 2, 3, 12, 7, 9, 10]
 lisArray = [nums.first] = [3]
 
 for index in 1..< nums.count {
    nums[index] //4
    binarySerachIfNumberPresentLessThan(4)
    if yes {
        lisArray.replace(index) = 4
    } if No {
        lisArray.append(4)
    }
 
 // nums = [3, 4, -1, 5, 8, 2, 3, 12, 7, 9, 10]
 // lisArray = [3]
 
 // index = 1
 // nums[index] = 4
 // let replaceIndex = binarySearch(lisArray, target: 4)
 // replaceIndex == -1
 // lisArray.append(4)
 // lisArray = [3, 4]
 
 // index = 2
 // nums[index] = -1
 // let replaceIndex = binarySearch(lisArray, target: -1)
 // replaceIndex == 0
 // lisArray.replace(replaceIndex) = nums[index]
 // lisArray = [-1, 4]
 
 // index = 3
 // nums[index] = 5
 // let replaceIndex = binarySearch(lisArray, target: 5)
 // replaceIndex == -1
 // lisArray.append(5)
 // lisArray = [-1, 4, 5]
 
 // index = 4
 // nums[index] = 8
 // let replaceIndex = binarySearch(lisArray, target: 8)
 // replaceIndex == -1
 // lisArray.append(8)
 // lisArray = [-1, 4, 5, 8]
 
 // index = 5
 // nums[index] = 2
 // let replaceIndex = binarySearch(lisArray, target: 2)
 // replaceIndex == 1
 // lisArray.replace(replaceIndex) = nums[index]
 // lisArray = [-1, 2, 5, 8]
 
 // index = 6
 // nums[index] = 3
 // let replaceIndex = binarySearch(lisArray, target: 3)
 // replaceIndex == 2
 // lisArray.replace(replaceIndex) = nums[index]
 // lisArray = [-1, 2, 3, 8]
 
 // index = 7
 // nums[index] = 12
 // let replaceIndex = binarySearch(lisArray, target: 12)
 // replaceIndex == -1
 // lisArray.append(12)
 // lisArray = [-1, 2, 3, 8, 12]
 
 // index = 8
 // nums[index] = 7
 // let replaceIndex = binarySearch(lisArray, target: 7)
 // replaceIndex == 3
 // lisArray.replace(replaceIndex) = nums[index]
 // lisArray = [-1, 2, 3, 7, 12]
 
 // index = 9
 // nums[index] = 9
 // let replaceIndex = binarySearch(lisArray, target: 9)
 // replaceIndex == 5
 // lisArray.replace(replaceIndex) = nums[index]
 // lisArray = [-1, 2, 3, 7, 9]
 
 // index = 10
 // nums[index] = 10
 // let replaceIndex = binarySearch(lisArray, target: 10)
 // replaceIndex == -1
 // lisArray.append(10)
 // lisArray = [-1, 2, 3, 7, 9, 10]
 
 // return lisArray.count = 6
 
 }
 
*/

func binarySearch(array: [Int], target: Int) -> Int {
    var left = 0
    let right = array.count - 1
    while left <= right {
        let mid = left + ((right - left)/2)
        let midItem = array[mid]
        if midItem >= target {
            return mid
        } else if midItem < target {
            left = mid + 1
        }
    }
    return -1
}
    
func lengthOfLIS(_ nums: [Int]) -> Int {
    guard let first = nums.first else {
        return 0
    }
    var lisArray = Array(repeating: -1, count: nums.count)
    lisArray[0] = first
    for i in 1..<nums.count {
        let index = binarySearch(array: lisArray, target: nums[i])
        if (index == -1) {
            var j = 0
            while (lisArray[j] != -1) {
                j += 1
            }
            lisArray[j] = nums[i]
        } else {
            lisArray[i] = nums[i]
        }
    }
    return lisArray.filter({$0 != -1}).count
}


lengthOfLIS([3, 4, -1, 5, 8, 2, 3, 12, 7, 9, 10])
