import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    // 0이 아닌거
    let noZero = lottos.filter{ $0 != 0 }
    // 0이 아닌것 중에 당첨번호랑 같은거
    let winCount = noZero.filter{ win_nums.contains($0) }.count

    let min = 0...1 ~= winCount ? 6: 7 - winCount

    let max = 0...1 ~= winCount+lottos.count-noZero.count ? 6 : 7-(winCount+lottos.count-noZero.count)

    return [max, min]
}