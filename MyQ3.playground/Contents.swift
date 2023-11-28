import UIKit

func findElementIndex<T: Comparable>(_ element: T, in array: [T]) {
    if let index = array.firstIndex(of: element) {
        print("series = \(array), searchedNo = \(element), result = \(index) (index)")
    } else {
        let insertionIndex = array.firstIndex { $0 > element } ?? array.endIndex
        print("series = \(array), searchedNo = \(element), result = \(insertionIndex) (when added, it would be at index \(insertionIndex))")
    }
}

let series = [1, 3, 5, 6]

findElementIndex(5, in: series)
findElementIndex(2, in: series)
findElementIndex(7, in: series)
