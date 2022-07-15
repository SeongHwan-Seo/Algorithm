import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let arr = readLine()!
    var count = 0

    for char in arr {

        if char == "(" {
             count += 1
         } else if char == ")" {
             count -= 1
             if count < 0 {
                 break
             }
         }

        
    }

     print(count == 0 ? "YES" : "NO")
    
}