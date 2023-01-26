import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var visited = Array(repeating: false, count: n)
    var answer = 0
    
    func dfs(_ num: Int) {
        visited[num] = true
        for i in 0..<n {
            if computers[num][i] == 1 && !visited[i] {
                dfs(i)
            }
        }
    }
    
    for i in 0..<n {
        if !visited[i] {
            answer += 1
            dfs(i)
        }
    }
    return answer
}


