import Foundation

let cnt = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<cnt {
    let num = Int(readLine()!)!
    arr.append(num)
}

arr.sorted(by: <).forEach{ i in
    print(i)
}


