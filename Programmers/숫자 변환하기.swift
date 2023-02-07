import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    if x == y { return 0}
    
    var count = 1
    var current = 0
    var set = Set<Int>()
    
    current = x + n
    if current < y {
        set.insert(current)
    } else if current == y {
        return 1
    }
    
    current = x * 2
    if current < y {
        set.insert(current)
    } else if current == y {
        return 1
    }
    
    current = x * 3
    if current < y {
        set.insert(current)
    } else if current == y {
        return 1
    }
    
    outerLoop:
    while true {
        count += 1
        var newSet = Set<Int>()
        
        for i in set {
            var newI = 0
            
            newI = i + n
            if newI < y {
                newSet.insert(newI)
            } else if newI == y {
                break outerLoop
            }
            
            newI = i * 2
            if newI < y {
                newSet.insert(newI)
            } else if newI == y {
                break outerLoop
            }
            
            newI = i * 3
            if newI < y {
                newSet.insert(newI)
            } else if newI == y {
                break outerLoop
            }
        }
        
        if newSet.count == 0 { return -1}
        
        set = newSet
    }
    
    return count
}