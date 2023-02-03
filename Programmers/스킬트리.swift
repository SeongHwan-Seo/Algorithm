import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var answer = 0
    for tree in skill_trees {
        var list = tree.filter{ skill.contains($0)}
        var pre = skill.prefix(list.count)
        if list == pre { answer += 1}
        
    }
    
    return answer
}