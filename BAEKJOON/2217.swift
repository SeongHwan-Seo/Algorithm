import Foundation

let n = Int(readLine()!)!
var arr: [Int] = []
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

let max = arr.max()!
var result = 0
arr = arr.sorted()

for (index, value) in arr.enumerated() {
    if value * (n - index) > result {
        result = value * (n - index)
    }
}

if result > max { print(result) }
else { print(max) }

