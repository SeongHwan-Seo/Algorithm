import Foundation

let n = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<n {
    let input = Int(readLine()!)!
    if input == 0 {
        arr.removeLast()
    } else {
        arr.append(input)
    }
}

print(arr.reduce(0, +))