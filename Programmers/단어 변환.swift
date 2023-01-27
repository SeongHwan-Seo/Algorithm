import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    if !words.contains(target) { return 0 }
    
    var arr = [String]()
    var check = Array(repeating: false, count: words.count)
    var count = 0
    
    arr.append(begin)
    
    while !arr.isEmpty {
        let now = arr.removeLast()
        
        if now == target {
            break
        }
        
        count += 1
        
        for i in 0..<words.count {
            if !check[i] {
                if isChange(words[i], now) {
                    arr.append(words[i])
                    check[i] = true
                }
            }
        }
        
    }
    
    return count
}

func isChange(_ word: String, _ now: String) -> Bool {
    if word.count != now.count { return false }
    
    var count = 0 
    
    var wordArr = Array(word)
    var nowArr = Array(now)
    
    for i in 0..<wordArr.count {
        if wordArr[i] != nowArr[i] {
            count += 1
        }
        
        if count > 1 { return false }
    }
    
    return true
}