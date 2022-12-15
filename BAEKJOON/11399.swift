import Foundation

let n = Int(readLine()!)!
let time = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()

var sum = 0
var answer = 0
for i in 0..<time.count {
    sum += time[i]
    answer += sum
}

print(answer)