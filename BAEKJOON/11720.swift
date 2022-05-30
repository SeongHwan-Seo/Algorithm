import Foundation

let cnt = readLine()!

let arr = Array(readLine()!)

let answer = arr.compactMap{ Int(String($0)) }
print(answer.reduce(0, +))