import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    if priorities[location] == priorities.max() { return 1 }
    
    var arr = priorities
    var index = location
    var answer = 0
    while {
        if arr.first! == priorities.max() {
            arr.removeFirst()
            answer += 1

            if index == 0 {
                break
            }
            else {
                index -= 1
            }
        }
        else {
            let temp = arr.removeFirst()
            arr.append(temp)

            if index == 0 {
                index = arr.count - 1
            } 
            else {
                index -= 1
            }
        }
    }
    return answer
}