import Foundation

func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
    var vanList = Array(repeating: [Int](), count: banned_id.count)
    var set = Set<[Int]>()
    
    
    for (i,uid) in user_id.enumerated() {
        for (j,bid) in banned_id.enumerated() {
            if isEqual(uid, bid) {
                vanList[j].append(i)
            }
        }
    }
    
    func visit(_ n: Int, _ select:[Int]) {
        if select.count == banned_id.count {
            set.insert(select.sorted())
            return
        }
        
        var select = select
        var arr = vanList[n]
        
        for i in arr {
            if select.contains(i) {
                continue
            }
            select.append(i)
            visit(n+1, select)
            select.removeLast()
        }
    }
    
    visit(0, [])
    
    return set.count
}

func isEqual(_ userId: String, _ bannedId: String) -> Bool {
    if userId.count != bannedId.count { return false }
    
    var uid = userId.map{String($0)}
    var bid = bannedId.map{String($0)}
    
    for ( idx, b) in bid.enumerated() {
        if b != "*" && uid[idx] != bid[idx] {
            return false
        }
    }
    
    return true
}