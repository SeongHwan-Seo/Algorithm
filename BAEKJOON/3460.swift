import Foundation

let input = readLine()!
let count = Int(input)!

for _ in 0..<count {
    let num = Int(readLine()!)!
    let binary = String(num, radix: 2 )
    
    for (i,v) in binary.reversed().enumerated() {
        if v == "1" {
            print(i, terminator: " ")
        }
    }
}