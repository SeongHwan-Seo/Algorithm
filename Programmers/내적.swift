import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var answer:[Int] = []
    
    for i in 0..<a.count {
        answer.append(a[i] * b[i])
    }
    
    
    return answer.reduce(0, +)
}