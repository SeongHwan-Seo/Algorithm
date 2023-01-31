import Foundation

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    
    func union(_ a: Int, _ b: Int) {
        let a = findParent(a)
        let b = findParent(b)
        
        if a < b {
            parent[b] = a
        } else {
            parent[a] = b
        }
    }
    
    func findParent(_ node: Int) -> Int {
        if parent[node] != node {
            return findParent(parent[node])
        } else {
            return node
        }
    }
        
    let sortedCosts = costs.sorted{ $0[2] < $1[2]}
    var parent = Array(repeating: 0, count: n + 1)
    var answer = 0
    
    (1...n).forEach {
        parent[$0] = $0
    }
    
    for cost in sortedCosts {
        let a = cost[0]
        let b = cost[1]
        let c = cost[2]
        
        if findParent(a) != findParent(b) {
            union(a,b)
            answer += c
        }
        
    }
    return answer
}