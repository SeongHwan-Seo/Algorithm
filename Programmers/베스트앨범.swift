import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var dict = [String : [[Int]]]()
    var answer = [Int]()
    
    for i in 0..<genres.count {
        if let _ = dict[genres[i]] {
            dict[genres[i]]?.append([i, plays[i]])
        } else {
            dict[genres[i]] = [[i, plays[i]]]
        }
    }
    
    let sortedDict = dict.sorted { (first, second) -> Bool in
        return first.value.map { $0[1] }.reduce(0, +) > second.value.map{ $0[1] }.reduce(0, +)
    }
    
    for i in 0..<sortedDict.count {
        
        let item = sortedDict[i].value.sorted { ( first, second) -> Bool in
            return first[1] == second[1] ? false : first[1] > second[1]
        }
        
        for i in 0..<item.count {
            if i > 1 { break }
            answer.append(item[i][0])
        }
    }
    
    
    
    return answer
}