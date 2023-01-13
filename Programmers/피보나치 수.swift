func solution(_ n:Int) -> Int {
    var answer = [0, 1]
    
    for i in 2...n {
        answer.append((answer[i - 1] + answer[i - 2]) % 1234567)
    }
    
    return answer[n]
}