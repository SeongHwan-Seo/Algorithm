import Foundation

let count = Int(readLine()!)!
var arr: [String] = []
var answer: [Int] = []

for _ in 0..<count {
    let ox = readLine()!
    arr.append(ox)
}

for i in 0..<count {
    let arr2 = Array(arr[i])
    var a = 0
    for j in 0..<arr2.count {
        if arr2[j] == "O" {
            a += 1
            answer.append(a)
        } else {
            a = 0
            answer.append(a)
        }
    }
    print(arr2.reduce(0, +))
}