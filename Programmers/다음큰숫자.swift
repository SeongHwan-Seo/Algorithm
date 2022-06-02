import Foundation

func solution(_ n:Int) -> Int
{
    let prvOneCount = String(n, radix: 2).map { $0 }.filter{ $0 == "1"}.count
    var answer: Int = n + 1
    while true {
        let aftOneCount = String(answer, radix: 2).map { $0 }.filter{ $0 == "1"}.count
        if prvOneCount == aftOneCount { break }
        answer += 1
    }
    
    return answer
}