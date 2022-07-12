import Foundation

var num = Int(readLine()!)!
var arr: [(Int, Int)] = []

for _ in 1...num {
    let xy = readLine()!.split(separator: " ")
    arr.append((Int(xy[0])!, Int(xy[1])! ))
}

arr.sort{ (a, b) in
    if a.0 == b.0 {
        return a.1 < b.1
    }
    return a.0 < b.0
}

for i in arr {
    print(i.0, i.1)
}