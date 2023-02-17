import Foundation

let n = Int(readLine()!)!
var answer = [Int]()



for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let width = input[0]
    let height = input[1]
    let count = input[2]
    var result = 0
    
    var graph = Array(repeating: Array(repeating: 0, count: height), count: width)
    
    for _ in 0..<count {
        let num = readLine()!.split(separator: " ").map { Int($0)! }
        graph[num[0]][num[1]] = 1
    }
    
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    
    func bfs(_ a:Int, _ b: Int) {
        var queue = [(a,b)]
        var idx = 0
        graph[a][b] = 0
        
        while idx < queue.count {
            let (x, y) = queue[idx]
            idx += 1
            for i in 0..<4 {
                let (nx, ny) = (x+dx[i], y+dy[i])
                if (0..<width).contains(nx) && (0..<height).contains(ny) && graph[nx][ny] == 1 {
                    graph[nx][ny] = 0
                    queue.append((nx, ny))
                }
            }
        }
    }
    for i in 0..<width {
        for j in 0..<height {
            if graph[i][j] == 1 {
                bfs(i, j)
                result += 1
            }
        }
    }
    answer.append(result)
}

answer.forEach {
    print($0)
}
