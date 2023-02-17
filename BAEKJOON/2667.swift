//
//  main.swift
//  bj
//
//  Created by SHSEO on 2023/02/16.
//

import Foundation
//7
//0110100
//0110101
//1110101
//0000111
//0100000
//0111110
//0111000

let n = Int(readLine()!)!
var graph = [[Int]]()

for _ in 0..<n {
    graph.append(readLine()!.map{ Int(String($0))! })
}

var dx = [-1,1,0,0]
var dy = [0,0,1,-1]

func bfs(_ a:Int, _ b: Int) -> Int {
    var count = 1
    var idx = 0
    var queue = [(a, b)]
    graph[a][b] = 0
    
    while idx < queue.count {
        let (x,y) = queue[idx]
        idx += 1
        
        for i in 0..<4 {
            let (nx, ny) = (x+dx[i], y+dy[i])
            if (0..<n).contains(nx) && (0..<n).contains(ny) && graph[nx][ny] == 1 {
                graph[nx][ny] = 0
                count += 1
                queue.append((nx, ny))
            }
        }
    }
    return count
}

var answer = [Int]()

for i in 0..<n {
    for j in 0..<n {
        if graph[i][j] == 1 {
            answer.append(bfs(i,j))
        }
    }
}

print(answer.count)
for i in answer.sorted(by: <) {
    print(i)
}
