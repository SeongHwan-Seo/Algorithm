//프로그래머스 코딩테스트연습
//월간 코드 챌린지 시즌3
//없는 숫자 더하기

import Foundation

func solution(_ numbers:[Int]) -> Int {
    var arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    var answer: Int = 0
    for i in arr {
        if !numbers.contains(i) {
            answer = answer + i
        }
    }
    return answer
}