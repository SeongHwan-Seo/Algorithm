import Foundation

let testCase = Int(readLine()!)!

for _ in 0..<testCase {
    var arr: [Double] = []
    arr = readLine()!.split(separator: " ").map{ Double(String($0))! }
    arr.removeFirst()

    let avg = arr.reduce(0, +) / Double(arr.count)
    
    let answer = ( Double(arr.filter{ $0 > avg}.count) / Double(arr.count)) * 100
    
    print(String(format: "%.3f", answer) + "%")
}