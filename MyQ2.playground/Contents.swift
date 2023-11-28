import UIKit

func processSequence(_ numbers: [Int]) -> [Any] {
    var uniqueNumbers = Set<Int>()
    var result: [Any] = []

    for number in numbers {
        if !uniqueNumbers.contains(number) {
            uniqueNumbers.insert(number)
            result.append(number)
        } else {
            result.append("_")
        }
    }

    result.sort { (a, b) -> Bool in
        if let numA = a as? Int, let numB = b as? Int {
            return numA < numB
        }
        return false
    }

    return result
}

// Example usage:
let inputSequence = [3, 5, 2, 3, 8, 2, 7, 5]
let processedSequence = processSequence(inputSequence)
print(processedSequence)
