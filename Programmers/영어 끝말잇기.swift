import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var saidWords = [String]()
    
    for i in 0..<words.count {
        
        var word = words[i]
        
        if word.count < 1 {
            return [i % n + 1, i / n + 1]
        }
        
        if saidWords.contains(word) {
            return [i % n + 1, i / n + 1]
        }
        
        if saidWords.count > 0 {
            var lastWord = saidWords[i - 1]
            if lastWord.removeLast() != word.removeFirst() {
                return [i % n + 1, i / n + 1]
            }
        }
        
        saidWords.append(words[i])
    }
    return [0, 0]
}