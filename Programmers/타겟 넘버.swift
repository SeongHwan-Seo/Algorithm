import Foundation

var answer = 0

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    dfs(target, numbers, 0, 0)    
    
    return answer
}

func dfs(_ target: Int, _ numbers: [Int], _ sum: Int, _ index: Int) {
    if index >= numbers.count {
        if sum == target { answer += 1}
        return
    }
    
    dfs(target, numbers, sum + numbers[index], index + 1)
    dfs(target, numbers, sum - numbers[index], index + 1)
}