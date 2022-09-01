import Foundation

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nk[0]
var k = nk[1]
var answer = 0
var cost: [Int] = []

for _ in 1...n {
    cost.append(Int(readLine()!)!)
}

cost.sort(by : >)


for value in cost {
    if value <= k {
        answer += (k / value)
        k = (k % value)
        
        if k == 0 {
            break
        }
    }
    
}

print(answer)