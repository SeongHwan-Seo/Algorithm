import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    if a.min()! >= b.max()! { return 0 }
    
    var teamA = a
    var teamB = b
    
    teamA.sort(by: >)
    teamB.sort(by: >)
    
    var j = 0
    var count = 0
    
    for i in 0..<a.count {
        if teamA[i] < teamB[j] {
            count += 1
            j += 1
        }
    }
    
    return count
}