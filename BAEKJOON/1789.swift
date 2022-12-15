import Foundation

let S = Int(readLine()!)!
var sum = 0
var result = 0

for i in 1...S {
    if sum < S {
        sum += i
        result += 1
    } 
    if sum == S {
        print(result)
        break
    }
    if sum > S {
        print(result - 1)
        break
    }
}