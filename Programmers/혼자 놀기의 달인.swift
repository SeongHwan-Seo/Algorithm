import Foundation

func solution(_ cards:[Int]) -> Int {
    var visited = Array(repeating: false, count: cards.count)
    var answer = [Int]()
    
    for i in 0..<cards.count {
        var count = 0
        var next = i
        while true {
            if !visited[next] {
                visited[next] = true
                next = cards[next] - 1
                count += 1
            } else {
                answer.append(count)
                break
            }
        }
    }
    
    answer.sort(by: >)
    
    if answer.count == 1 { return 0}
    else { return answer[0] * answer[1] }
    
}