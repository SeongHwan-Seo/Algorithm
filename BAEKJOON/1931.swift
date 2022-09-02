import Foundation

let n = Int(readLine()!)!
var tuple = [(Int, Int)]()
var point = 0
var answer = 0

for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
    tuple.append((arr[0], arr[1]))
}

tuple.sort{ 
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    }
    return $0.1 < $1.1
}


for (start, end) in tuple {
    if start >= point {
        point = end
        answer += 1
    }
}

print(answer)