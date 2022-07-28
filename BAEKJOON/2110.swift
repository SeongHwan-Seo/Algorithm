import Foundation

let input = readLine()!.split(separator: " ").compactMap{ Int(String($0)) }
let n = input[0]
let c = input[1]
var arr: [Int] = []

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort()

var low = 1
var high = arr[n - 1] - arr[0]
var mid = 0

while low < high {
    var count = 1
    mid = (low + high) / 2
    var prev = arr[0]
    for i in 1..<n {
        let current = arr[i]
        if current - prev >=  mid {
            count += 1
            prev = current
        }
    }

    if count < c {
        high = mid - 1
    } else {
        low = mid + 1
    }
}

print(low)