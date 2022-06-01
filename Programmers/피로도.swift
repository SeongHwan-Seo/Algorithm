import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer: Int = 0
    getAnswer(dungeons: dungeons, answer: &answer, k: k, count: 0)
    return answer
}

func getAnswer(dungeons: [[Int]], answer: inout Int, k: Int, count: Int) {
    answer = max(answer, count)
    for (i, dungeon) in dungeons.enumerated() {
        var nDungeons = dungeons
        if dungeon[0] <= k && dungeon[1] <= k {
            let nK = k - dungeon[1]
            nDungeons.remove(at: i)
            getAnswer(dungeons: nDungeons, answer: &answer, k: nK, count: count + 1)
        }
    }
}