import Foundation

let line = readLine()!
let lineArr = line.components(separatedBy:" ")

var answer: [Int] = []
var A = Int(lineArr[0])!
var B = Int(lineArr[1])!
for i in 1...A {
    if A % i == 0 {
        answer.append(i)
    }
}
if answer.count >= B {
    print(answer[B - 1])
} else {
    print(0)
}
