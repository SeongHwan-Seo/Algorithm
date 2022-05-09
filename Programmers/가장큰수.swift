import Foundation

func solution(_ numbers:[Int]) -> String {
    var answer: String = ""
    var sorted = numbers.map{ String($0) }
    
    sorted.sort{ return $0 + $1 > $1 + $0}
    answer = sorted.joined()
    
    if Int(answer) == 0 { return "0"}
    
    return answer
}