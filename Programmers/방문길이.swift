import Foundation

func solution(_ dirs:String) -> Int {
    var streetSet = Set<[Int]>()
    var street = [0, 0]
    
    for dir in dirs {
        var x = 0
        var y = 0
        switch dir {
            case "U" :
                y = 1
            case "R" :
                x = 1
            case "L" :
                x = -1
            case "D" :
                y = -1
            default :
                break
        }
        
        let next = [street[0] + x, street[1] + y]
        
        if abs(next[0]) > 5 || abs(next[1]) > 5 { continue }
        
        if !streetSet.contains(street + next) && !streetSet.contains(next + street) {
            streetSet.insert(street + next)    
        }
        
        
        street = next
        
    }
    
    return streetSet.count
}