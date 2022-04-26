import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var answer: Int = 0;
    var vLost: [Int] = lost
    var vReserve: [Int] = reserve

    answer =  n - lost.count
    vLost.sort()
    vReserve.sort()

    for  (index,num) in vReserve.enumerated() {
        for(index2, num2) in vLost.enumerated() {
            if num == num2 {
                answer += 1
                vReserve[index] = -1
                vLost[index2] = -1
            }
        }

    }
    print(answer)
    print(vReserve)
    print(vLost)

    for  (index,num) in vReserve.enumerated() {
        for(index2, num2) in vLost.enumerated() {
            if vReserve[index] != -1 && vLost[index2] != -1 {
                if num - num2 == 1 || num - num2 == -1 {
                    vReserve[index] = -1
                    vLost[index2] = -1
                    answer += 1
                }
            }
        }
    }

    print(answer)
    print(vReserve)
    print(vLost)

    return answer
}