import Foundation

func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    var answer = 0
    var start = 1
    
    for station in stations + [n+w+1] {
        let end = station - (w + 1)
        let count = Int(ceil(Double(end - start + 1) / Double(2 * w + 1)))
        answer += count
        start = station + w + 1
    }

    return answer
}