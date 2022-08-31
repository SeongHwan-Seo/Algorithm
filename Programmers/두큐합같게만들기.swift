import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    
    let arr = queue1 + queue2
    
    var left = 0
    var right = queue1.count
    var answer = 0
    
    var sum1 = queue1.reduce(0, +)
    let sum2 = queue2.reduce(0, +)
    let goal = (sum1 + sum2) / 2
    
    if (sum1 + sum2) % 2 != 0 {
        return -1
    }
    
    if goal < queue1.max()! || goal < queue2.max()! {
        return -1
    }
    
    if sum1 == goal {
        return 0
    }
    
    
    while right < arr.count && left <= right {
        if sum1 < goal {
            sum1 += arr[right]
            right += 1
        } else if sum1 > goal {
            sum1 -= arr[left]
            left += 1
        } else {
            break
        }
        answer += 1
    }
    
    if sum1 != goal {
        return -1
    }
    
    return answer
}