import Foundation

let n = Int(String(readLine()!))!
var graph = Array(repeating: Array(repeating: 0, count: n), count: n)
var visited = Array(repeating: false, count: n)
var answer = 99999
var a = 0
var b = 0

for i in 0..<n {
    graph[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}


func dfs(depth: Int, start: Int) {
    if depth == n / 2 {
        a = 0
        b = 0
        
        for i in 0..<n {
            for j in 0..<n {
                if !visited[i] && !visited[j] {
                    b += graph[i][j]
                }
                if visited[i] && visited[j] {
                    a += graph[i][j]
                }
            }
        }
        
        answer = min(answer, abs(a-b))
        return
    }
    
    for i in start..<n {
        if !visited[i] {
            visited[i] = true
            dfs(depth: depth + 1, start: i)
            visited[i] = false
        }
    }
}

dfs(depth: 0, start: 0)
print(answer)
