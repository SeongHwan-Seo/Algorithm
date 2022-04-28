import Foundation
//progresses      speeds       return
//[93, 30, 55]    [1, 30, 5]   [2, 1]

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var vProgresses = progresses 
    var vSpeeds = speeds
    var answer: [Int] = []
    
    repeat {
        var count = 0
        
        for i in 0..<vProgresses.count {
            vProgresses[i] += vSpeeds[i]   
        }
        
        repeat {
            if vProgresses[0] >= 100 {
                vProgresses.removeFirst()
                vSpeeds.removeFirst()
                count += 1
            } else {
                break
            }
            
        } while !vProgresses.isEmpty
        
        if count > 0 {
            answer.append(count)
        }
        
    } while !vProgresses.isEmpty
    
    return answer
    
}