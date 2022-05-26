import Foundation

var arr:[Int] = []
for _ in 0...2 {
    let num = Int(readLine()!)!
    arr.append(num)
}

let mul = String(arr.reduce(0, *))

var arr2 = Array(mul)

for i in 0...9 {
    print(arr2.filter{ Int($0) == i}.count)
}