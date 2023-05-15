import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = [[Int]]()
    
    let arr1RowCnt = arr1.count
    let arr2ColCnt = arr2.first?.count ?? 0
    let arr2RowCnt = arr2.count
    
    for i in 0..<arr1RowCnt {
        answer.append([])
        for j in 0..<arr2ColCnt {
            var temp = 0
            for k in 0..<arr2RowCnt {
                temp += arr1[i][k] * arr2[k][j]
            }
            answer[i].append(temp)
        }
    }
    
    
    return answer
}