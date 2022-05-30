import Foundation

let count = Double(readLine()!)!
var arr = readLine()!.split(separator: " ").map{ Double(String($0))! }
var arr2 = arr.map{ $0 / arr.max()! * 100}


print(arr2.reduce(0, +) / count)
