import Foundation

let n = Int(readLine()!)!
var sum = 0
var value = 0


for i in 1..<n {
    sum = i
    for j in String(i) {
        sum +=Int(String(j))!
    }
    if sum == n {
        value = i
        break
    }
}

print(value == 0 ? "0" : "\(value)")