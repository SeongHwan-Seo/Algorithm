import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var vSet: Set<Int> = []
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            vSet.insert(numbers[i] + numbers[j])
        }
    }
    
    let answer = vSet.sorted().map{$0}
    
    return answer
}