import Foundation

func solution(_ operations:[String]) -> [Int] {
    
    
    var answer = [Int]()
    
    for i in operations {
        let value = i.components(separatedBy: " ")
        if value[0] == "I" {
            answer.append(Int(value[1])!)
        } else if value[0] == "D" && !answer.isEmpty {
            if value[1].contains("-") {
                
                answer.sort(by: >)
                answer.removeLast()
            } else {
                answer.sort()
                answer.removeLast()
            }
        }
    }


    if answer.count == 0 { return [0, 0]}
    else {return [answer.max()!, answer.min()!]}
}