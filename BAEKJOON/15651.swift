import Foundation

let nm = readLine()!.split(separator:" ").map{ Int($0)! }
var answer = [Int]()
var str = ""

func dfs(_ depth: Int) {
    if depth == nm[1] {
        str += answer.map{ String($0) }.joined(separator: " ")
        str += "\n"
        return
    }
    
    for i in 1...nm[0] {
        answer.append(i)
        dfs(depth + 1)
        answer.removeLast()
    }
}

dfs(0)
print(str)
