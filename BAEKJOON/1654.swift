import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

let n = input[0]
let m = input[1]

var arr: [Int] = []

for _ in 0..<n {
    let val = Int(readLine()!)!
    arr.append(val)
}

arr.sort()



func BinarySearch() -> Int {
    var start = 1
    var end = arr[arr.count - 1]
    var answer = 0

    while (start <= end) {

    let mid = (start + end) / 2
    var count = 0
    for i in arr {
        count += i / mid
    }

    if count >= m {
        if answer < mid {
            answer = mid
        }
        start = mid + 1
    } else {
        end = mid - 1
        }
    }
    return answer
}

print(BinarySearch())





