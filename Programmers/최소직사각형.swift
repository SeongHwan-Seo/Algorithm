import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var arr = sizes
    var x: [Int] = []
    var y: [Int] = []
    
    for i in 0..<sizes.count {
        arr[i].sort()
        x.append(arr[i][0])
        y.append(arr[i][1])
    }
    
    return x.max()! * y.max()!
}