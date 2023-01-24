import Foundation

func solution(_ record:[String]) -> [String] {
    var dict = [String : String]()
    var answer = [String]()
    
    record.forEach { s in
        let recArr = s.components(separatedBy: " ")
        if recArr.count > 2 {
            dict[recArr[1]] = recArr[2]
        }
    }
    
    record.forEach { s in
        let recArr = s.components(separatedBy: " ")
        let name = dict[recArr[1]]!
                    
        if recArr[0] == "Enter" {
            answer.append("\(name)님이 들어왔습니다.")        
        } else if recArr[0] == "Leave" {
            answer.append("\(name)님이 나갔습니다.")
        }
    }
    
    return answer
}