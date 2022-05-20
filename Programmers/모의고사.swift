import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let stu = [1, 2, 3, 4, 5]
    let stu2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let stu3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var count: [Int : Int] = [:]
    
    for i in 0..<answers.count {
        if answers[i] == stu[i%stu.count] {
            count[1] = (count[1] ?? 0) + 1
        }
        if answers[i] == stu2[i%stu2.count] {
            count[2] = (count[2] ?? 0) + 1
        }
        if answers[i] == stu3[i%stu3.count] {
            count[3] = (count[3] ?? 0) + 1
        }
    }
    
    let max = count.values.max()!
    let answer = count.filter{ $0.value == max}.keys.sorted()
    
    
    return answer
}