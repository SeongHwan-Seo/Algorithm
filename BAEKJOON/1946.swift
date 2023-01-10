import Foundation

let S = readLine()!.map{ String($0) }
var zeroCnt = 0
var oneCnt = 0


if S[0] == "0" {
    zeroCnt += 1
}
else {
    oneCnt += 1
}

for i in 1...S.count - 1 {
    if S[i] != S[i - 1] {
        if S[i] == "0" {
            zeroCnt += 1
        }
        else {
            oneCnt += 1
        }
    }
}

if zeroCnt > oneCnt { print(oneCnt) }
else { print(zeroCnt) } 