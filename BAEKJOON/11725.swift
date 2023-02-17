import Foundation

let n = Int(readLine()!)!

var graph: [[Int]] = Array(repeating: [], count: n + 1)
var visited = Array(repeating: false, count: n + 1)

for _ in 1..<n {
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    graph[arr[0]].append(arr[1])
    graph[arr[1]].append(arr[0])
}

var parents = Array(repeating: 0, count: n + 1)

func dfs(_ num: Int, _ parent: Int) {
    visited[num] = true
    parents[num] = parent
    for i in 0..<graph[num].count {
        let next = graph[num][i]
        if !visited[next] {
            dfs(next, num)
        }
    }
}

dfs(1, 0)
for i in 2...n {
    print(parents[i])
}
