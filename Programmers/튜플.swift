import Foundation

func solution(_ s:String) -> [Int] {
    var s = s.replacingOccurrences(of: "{", with: "")
    var tupleString = s.components(separatedBy: "},").map { $0.replacingOccurrences(of: "}", with: "")}
    var answer = [Int]()
    
    var tuples = tupleString.map { tuple -> [String] in
                tuple.components(separatedBy: ",")}
    var sortedTuples = tuples.sorted(by: { $0.count < $1.count })
    
    sortedTuples.forEach { tuple in
        tuple.forEach { num in
            let n = Int(num)!
            if !answer.contains(n) {
                answer.append(n)
            }            
        }
    }
    
    return answer
}