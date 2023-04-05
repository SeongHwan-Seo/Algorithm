import Foundation

let n = Int(readLine()!)!
var set = Set<String>()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    if input[1] == "enter" {
        set.insert(input[0])
    } else {
        set.remove(input[0])
    }
}

var arr = Array(set)
arr.sort(by: >)

arr.forEach{ value in
    print(value)
}
