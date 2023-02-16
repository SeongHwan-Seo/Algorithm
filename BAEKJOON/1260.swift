//
//  main.swift
//  bj
//
//  Created by SHSEO on 2023/02/16.
//

import Foundation
//4 5 1
//1 2
//1 3
//1 4
//2 4
//3 4

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0]
let M = input[1]
let start = input[2]


var graph = Array(repeating: Array(repeating: 0, count: N+1), count: N+1)
var visited = Array(repeating: false, count: N+1)

for _ in 0..<M {
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    graph[arr[0]][arr[1]] = 1
    graph[arr[1]][arr[0]] = 1
}

func dfs(_ start: Int) {
    visited[start] = true
    print(start, terminator: " ")
    for i in 1...N {
        if !visited[i] && graph[start][i] == 1{
            dfs(i)
        }
    }
}

func bfs(_ start: Int) {
    var queue = [Int]()
    visited[start] = false
    queue.append(start)
    
    while !queue.isEmpty {
        var num = queue.removeFirst()
        print(num, terminator: " ")
        for i in 1...N {
            if visited[i] && graph[num][i] == 1 {
                queue.append(i)
                visited[i] = false
            }
        }
    }
}

dfs(start)
print("")
bfs(start)
