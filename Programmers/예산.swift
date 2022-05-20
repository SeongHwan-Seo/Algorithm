import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let sort = d.sorted()
    var count = 0
    var sum = 0
    for i in 0..<sort.count {
        sum += sort[i]
        if sum <= budget {
            count += 1
        }
        else { break }
    }
    return count
}