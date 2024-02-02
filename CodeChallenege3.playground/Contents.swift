import UIKit

func getTwoSum(arrInput : [Int], target: Int) -> [Int] {
    var arrResult = [Int]()
    // ClosedRange
    let range = 0...(0 + arrInput.count - 1)
    for i in stride(from: range.lowerBound, through: range.upperBound, by: 1) {
        for y in stride(from: i + 1, through: range.upperBound, by: 1) {
            print("Current value: \(arrInput[y]) & \(arrInput[i])")
            if (arrInput[y] + arrInput[i] == target) {
                arrResult.append(i)
                arrResult.append(y)
            }
        }
    }
    return arrResult
}


print(getTwoSum(arrInput: [2,7,11,15], target: 18))


