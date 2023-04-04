import Foundation

var arr = [Int]()

for _ in 0..<5 {
    arr.append(Int(readLine()!)!)
}
arr.sort()
print(arr.reduce(0, +) / 5)
print(arr[2])