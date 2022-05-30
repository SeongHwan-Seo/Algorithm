import Foundation

let num = Int(readLine()!)!

if num == 0 {
    print(1)
} else {
    print(Array(1...num).reduce( 1, * ))
}