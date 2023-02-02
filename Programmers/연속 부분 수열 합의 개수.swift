import Foundation

func solution(_ elements:[Int]) -> Int {
    var nSet = Set<Int>()
    
    for i in 0..<elements.count {
        var sum = 0
        for j in 0..<elements.count {
            var idx = (i+j) % elements.count
            sum += elements[idx]
            nSet.insert(sum)
        }
    }
    
    return nSet.count
}