import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer: [Int] = []
    
    for i in 0..<commands.count {
        var arr: [Int] = []
        var n = commands[i][0]
        var m = commands[i][1]
        var k = commands[i][2]
        for j in n - 1...m - 1 {
            arr.append(array[j])
        }
        arr.sort()
        
        answer.append(arr[k - 1])
        
    }
    
    return answer
}