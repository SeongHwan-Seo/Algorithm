//
//  main.swift
//  bj
//
//  Created by SHSEO on 2023/02/16.
//

import Foundation
//7
//6
//1 2
//2 3
//1 5
//5 2
//5 6
//4 7
let n = Int(readLine()!)!
let m = Int(readLine()!)!
var count = 0

var graph = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
var visited = Array(repeating: false, count: n+1)
for _ in 0..<m {
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    graph[arr[0]][arr[1]] = 1
    graph[arr[1]][arr[0]] = 1
}

func bfs(_ start: Int) {
    var queue = [Int]()
    visited[start] = true
    queue.append(start)
    
    while !queue.isEmpty {
        let num = queue.removeFirst()
        for i in 1...n {
            if !visited[i] && graph[num][i] == 1 {
                queue.append(i)
                visited[i] = true
                count += 1
            }
        }
    }
}

bfs(1)
print(count)
