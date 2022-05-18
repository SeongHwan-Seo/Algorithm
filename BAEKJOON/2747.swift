import Foundation

guard let n = Int(readLine()!) else { fatalError() }


func fibo(_ n: Int) -> Int {
    var answer = [0, 1]
    for i in 0...n {
        if i == 0 || i == 1 {
            continue
        } else {
            answer.append(answer[i - 1] + answer[i - 2])
        }
    }
    return answer[n]
}


print(fibo(n))
