import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dict = [String : Int]()
    var k = k
    var answer = 0
    
    tangerine.forEach {
        if let count = dict[String($0)] {
            dict[String($0)] = count + 1
        } else {
            dict[String($0)] = 1
        }
    }
    
    let sortedDict = dict.sorted{ $1.1 < $0.1 }
    
    for i in 0..<sortedDict.count {
        answer += 1
        
        k -= sortedDict[i].value
        if k <= 0 {
            break
        }
    }
   
    
    return answer
}