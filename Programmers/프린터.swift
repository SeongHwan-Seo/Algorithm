import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var arr = priorities
    var nowIndex = location
    var answer = 0
    
    while true {
        if arr.first! == arr.max() {
            answer += 1
            arr.removeFirst()
            
            if nowIndex == 0 {
                break
            } else {
                nowIndex -= 1
            }
            
            
        } else {
            let tmp = arr.removeFirst()
            arr.append(tmp)
            
            if nowIndex == 0 {
                nowIndex = arr.count - 1
            } else {
                nowIndex -= 1
            }
            
        }
    }
    return answer
}