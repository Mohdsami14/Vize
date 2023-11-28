import UIKit

//var greeting = "Hello, playground"
func findMedian(_ array1: [Int], _ array2: [Int]) -> Double? {
    
    // Arrays are combined
    let combinedArray = array1 + array2
    
    guard !combinedArray.isEmpty else {
        return nil
    }

    let sortedArray = combinedArray.sorted()
    
    let middleIndex = sortedArray.count / 2
    
    let middleElement1 = sortedArray[middleIndex - 1]
    let middleElement2 = sortedArray[middleIndex]
    return Double(middleElement1 + middleElement2) / 2.0
}

// Example
let array1 = [1, 3, 5]
let array2 = [2, 4, 6, 8]

if let median = findMedian(array1, array2) {
    print("The median is: \(median)")
} else {
    print("Arrays are empty.")
}

