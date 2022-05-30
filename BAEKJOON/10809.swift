import Foundation


let str = Array(readLine()!)
let arr = Array("abcdefghijklmnopqrstuvwxyz")

for char in "abcdefghijklmnopqrstuvwxyz" {
    if str.contains(char) {
        let index = str.firstIndex(of: char)
        print(index!, terminator: " ")
    } else {
        print(-1, terminator: " ")
    }
}



