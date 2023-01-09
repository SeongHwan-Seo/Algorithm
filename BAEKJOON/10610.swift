import Foundation

let N = readLine()!
let sum = N.map{ Int(String($0))! }.reduce(0, +)

if !N.contains("0") || sum % 3 != 0 { print("-1") }
else { print(String(N.map { $0 }.sorted(by : >))) }
