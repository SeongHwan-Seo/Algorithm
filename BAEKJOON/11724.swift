import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]
var answer = 0
var visited = Array(repeating: false, count: n+1)
var graph: [[Int]] = Array(repeating: [], count: n + 1)

for _ in 1...m {
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    graph[arr[0]].append(arr[1])
    graph[arr[1]].append(arr[0])
}

func dfs(_ now: Int, _ depth: Int) {
    visited[now] = true
    for i in 0..<graph[now].count {
        let next = graph[now][i]
        if !visited[next] {
            dfs(next, depth + 1)
        }
    }
}

for i in 1...n {
    if !visited[i] {
        answer += 1
        dfs(i, 0)
    }
}

print(answer)
