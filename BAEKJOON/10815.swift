import Foundation

let n = Int(readLine()!)!
var nArr = readLine()!.split(separator: " ").map{ Int(String($0))! }
let m = Int(readLine()!)!
let mArr = readLine()!.split(separator: " ").map{ Int(String($0))! }
var answer = [String]()

nArr.sort()

func binarySearch(_ left: Int, _ right: Int, _ num: Int, _ arr: [Int]) -> Bool {
    var result = false
    if left > right { return result }

    let mid: Int = (left + right) / 2
    if arr[mid] > num {
        result = binarySearch(left, mid - 1, num, arr)
    } else if arr[mid] < num {
        result = binarySearch(mid + 1, right, num, arr)
    } else {
        return true
    }
    return result
}

for i in mArr {
    if binarySearch(0, n - 1, i, nArr) {
        answer.append("1")
    } else {
        answer.append("0")
    }
}
print(answer.joined(separator: " "))