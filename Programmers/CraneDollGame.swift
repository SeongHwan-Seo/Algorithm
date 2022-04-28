import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var vBoard: [[Int]] = board
    var vMoves: [Int] = moves
    var count: Int = 0
    var items: [Int] = []

    for i in vMoves {
        for j in 0..<vBoard.count {
            if vBoard[j][i - 1] != 0 {
                if items.last == vBoard[j][i - 1] {
                    items.popLast()
                    count += 2
                } else {
                    items.append(vBoard[j][i - 1])
                }
                vBoard[j][i - 1] = 0
                break
            }
        }
    }

    return count
}


/*
[[0,0,0,0,0],
 [0,0,1,0,3],
 [0,2,5,0,1],
 [4,2,4,4,2],
 [3,5,1,3,1]]

  1-2-3-4-5
  [1,5,3,5,1,2,1,4]
*/