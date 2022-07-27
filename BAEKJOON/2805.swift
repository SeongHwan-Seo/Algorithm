import Foundation

let input = readLine()!.split(separator: " ").compactMap{ Int(String($0)) }
let m = input[1]

var arr = readLine()!.split(separator: " ").compactMap{ Int(String($0)) }

var start = 0
var end = arr.max()!
var mid = 0
var temp = 0
var answer = 0

while end > start {
    mid = (start + end) / 2
    temp = arr.map { $0 > mid ? $0 - mid : 0 }.reduce(0, +)

    if temp < m {
        end = mid
    } else {
        answer = mid
        start = mid + 1
    }
}

print(answer)
