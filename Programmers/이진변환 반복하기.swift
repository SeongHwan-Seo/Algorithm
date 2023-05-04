import Foundation

func solution(_ s:String) -> [Int] {
    var removeCnt = 0
    var input = s
    var beforeCnt = 0
    var afterCnt = 0
    var cnt = 0
    
    while true {
        cnt += 1
        beforeCnt = input.count
        input = input.components(separatedBy: "0").joined()
        afterCnt = input.count
        removeCnt += (beforeCnt - afterCnt)
        
        input = String(input.count, radix: 2)
        beforeCnt = 0
        afterCnt = 0
        
        if input == "1" { break }
    }
    return [cnt, removeCnt]
}