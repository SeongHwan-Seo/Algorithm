import Foundation

var list = Set<String>()

for _ in 0..<Int(readLine()!)! {
    list.insert(readLine()!)
}

list.sorted{ (a: String, b: String) -> Bool in
    if a.count == b.count {
        return a < b
    } else {
        return a.count < b.count
    }
}.forEach { print($0) }