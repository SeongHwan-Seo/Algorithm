import Foundation

let n = Int(readLine()!)!
var stack: [Int] = []


for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    switch input[0] {
    case "push":
        stack.append(Int(input[1])!)
    case "top":
        if stack.isEmpty {
            print(-1)
        } else {
            print(stack.last!)
        }
    case "pop":
        if stack.isEmpty {
            print(-1)
        } else {
            print(stack.last!)
            stack.removeLast()
        }
    case "size":
        print(stack.count)
    case "empty":
        if stack.isEmpty {
            print(1)
        } else {
            print(0)
        }
        
    default:
        continue
        
    }
}