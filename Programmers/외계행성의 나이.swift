import Foundation

func solution(_ age:Int) -> String {
    let charArr: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    var answer = [String]()
    
    for num in String(age) {
        answer.append(charArr[Int(String(num))!])
    }
    
    
    return answer.joined(separator: "")
}