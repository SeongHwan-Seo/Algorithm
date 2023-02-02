import Foundation

func solution(_ s:String) -> Int {
    var arr = Array(s)
    var answer = 0
    
    for _ in arr {
        arr.append(arr.removeFirst())
        if isCollect(arr) {
            answer += 1        
        }
    }
    
    return answer
}

func isCollect(_ s: [Character]) -> Bool {
    var stack = [Character]()
    
    for c in s {
        if stack.isEmpty {
            stack.append(c)
        } else {
            let last = stack.last!
            switch last {
                case "[" : 
                    if c == "]" { stack.removeLast() } else { stack.append(c) }
                case "{" :
                    if c == "}" { stack.removeLast() } else { stack.append(c) }
                case "(" :
                    if c == ")" { stack.removeLast() } else { stack.append(c) }
                default : stack.append(c)
            }
        }
    }
    return stack.isEmpty
}