import Foundation


let n = Int(readLine()!)!
let num = readLine()!.split(separator: " ").map { Int($0)! }
let a = num[0]
let b = num[1]
let m = Int(readLine()!)!
var answer = -1
var graph: [[Int]] = Array(repeating: [], count: n + 1)

var visited = Array(repeating: false, count: n + 1)

for _ in 0..<m {
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    graph[arr[0]].append(arr[1])
    graph[arr[1]].append(arr[0])
}

func dfs(_ start: Int, _ sum: Int) {
    visited[start] = true
    if start == b {
        answer = sum
        return
    }
    for i in 0..<graph[start].count {
        let next = graph[start][i]
        if !visited[next] {
            dfs(next, sum + 1)
        }
    }
}

dfs(a, 0)

print(answer)
