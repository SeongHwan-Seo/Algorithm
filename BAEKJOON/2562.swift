import Foundation

var arr:[Int] = []
for _ in 1...9 {
    let num = Int(readLine()!)!
    arr.append(num)
}



print(arr.max()!)
print(arr.firstIndex(of: arr.max()!)! + 1)