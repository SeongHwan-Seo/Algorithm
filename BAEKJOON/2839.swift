import Foundation

var n = Int(readLine()!)!
var answer = 0

print(getAnser())

func getAnser() -> Int {
    if n % 5 == 0 {
        return n / 5
    }

    while 0 <= n {
        n -= 3
        answer += 1
        if n % 5 == 0 {
            return answer + (n / 5)
        }
    }

    return -1
 }