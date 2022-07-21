import Foundation

let n = Int(readLine()!)!
var arr: [Int] = []

arr = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()

let m = Int(readLine()!)!
var input: [Int] = []

input = readLine()!.split(separator: " ").map{ Int(String($0))! }



func BinarySearch(arr: [Int], target: Int) -> Int {
    var start = 0
    var end = arr.count - 1

    while end >= start {
        let mid = (start + end) / 2
        if arr[mid] == target {
            return 1
        } else if arr[mid] > target {
            end = mid - 1
        } else if arr[mid] < target {
            start = mid + 1
        }

    }

    return 0
}

for item in input {
    print(BinarySearch(arr: arr, target: item))
}