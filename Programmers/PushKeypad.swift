import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var leftHand = 10
    var rightHand = 12
    var left = [1, 4, 7]
    var right = [3, 6, 9]
    var answer = ""
    
    for i in numbers {
        let num = i == 0 ? 11 : i
        
        if left.contains(num) {
            leftHand = num
            answer += "L"
        } else if right.contains(num) {
            rightHand = num
            answer += "R"
        } else {
            var L = abs(((num - leftHand) / 3) + ((num - leftHand) % 3))
            var R = abs(((num - rightHand) / 3) + ((num - rightHand) % 3))
            
            if L < R {
                leftHand = num
                answer += "L"
            } else if R < L {
                rightHand = num
                answer += "R"
            } else {
                if hand == "left" {
                    leftHand = num
                    answer += "L"
                } else {
                    rightHand = num
                    answer += "R"
                }
            }
        }
        
    }
    return answer
}