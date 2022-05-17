import Foundation

var total = 0
var totalArr:[Int] = []

for _ in 0..<10 {
    let input = readLine()!
    let arr = input.split(separator: " ").map { Int($0) ?? 0}
    total -= arr[0]
    total += arr[1]
    totalArr.append(total)
}

print(totalArr.max()!)