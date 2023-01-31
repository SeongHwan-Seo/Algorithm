import Foundation

func solution(_ gems:[String]) -> [Int] {
    var gemCount = Set(gems).count
    var start = 0
    var end = 0
    var maxLength = gems.count
    var minDiff = Int.max
    var answer = [0, 0]
    var dict: [String : Int] = [:]
    
    if gemCount == 1 { return [ 1, 1 ]}
    
    while end < maxLength {
        if let _ = dict[gems[start]] {
            if dict.count == gemCount {
                if end - start < minDiff {
                    minDiff = end - start
                    answer[0] = start + 1
                    answer[1] = end + 1
                }
                
                dict[gems[start]]! -= 1
                if dict[gems[start]] == 0 {
                    dict[gems[start]] = nil
                }
                start += 1
                
                
            } else {
                if let _ = dict[gems[end]] {
                    dict[gems[end]]! += 1
                    end += 1
                } else {
                    dict[gems[end]] = 0
                }
            }
        } else {
            dict[gems[start]] = 0
        }
    }
    
    return answer
}