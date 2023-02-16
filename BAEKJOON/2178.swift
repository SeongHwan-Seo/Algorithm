//
//  main.swift
//  bj
//
//  Created by SHSEO on 2023/02/16.
//

import Foundation
//4 6
//101111
//101010
//101011
//111011

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
var answer = 0
var miro = [[Int]]()
for _ in 0..<N {
    miro.append(readLine()!.map{ Int(String($0))! })
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

var queue: [(x: Int, y: Int, count: Int)] = [(0,0,1)]
var index = 0
func bfs() {
    while index < queue.count {
        let node = queue[index]
        index += 1
        
        for i in 0..<4 {
            let nodeX = node.x + dx[i]
            let nodeY = node.y + dy[i]
            let nCount = node.count + 1
            
            if nodeX >= 0 && nodeY >= 0 && nodeX < N && nodeY < M {
                if miro[nodeX][nodeY] == 1 {
                    answer = nCount
                    if nodeX == N - 1 && nodeY == M - 1 {
                        index = queue.count
                        break
                    }
                    miro[nodeX][nodeY] = 0
                    queue.append((nodeX, nodeY, nCount))
                    
                }
            }
        }
    }
}

bfs()
print(answer)

    

