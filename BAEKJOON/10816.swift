import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()

let m = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{ Int(String($0))! }

var dict: [Int: Int] = [:]
var answer: [Int] = []
for i in arr {
    if dict.keys.contains(i) {
        dict[i]! += 1
    } else {
        dict[i] = 1
    }
}

for j in input {
    if dict.keys.contains(j) {
        answer.append(dict[j]!)
    } else {
        answer.append(0)
    }
}

print(answer.map{String($0)}.joined(separator: " "))