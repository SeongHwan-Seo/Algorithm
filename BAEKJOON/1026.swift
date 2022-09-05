import Foundation

let n = Int(readLine()!)!
var a = readLine()!.split(separator: " ").map{ Int(String($0))! }
var b = readLine()!.split(separator: " ").map{ Int(String($0))! }

let sortedA = a.sorted(by : >)
let sortedB = b.sorted(by : <)
var answer = 0

for i in 0..<n {
    answer += sortedA[i] * sortedB[i]
}

print(answer)