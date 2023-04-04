import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let k = input[1]

var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

arr.sort(by: >)

print(arr[k - 1])
