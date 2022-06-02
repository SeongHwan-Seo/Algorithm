import Foundation

func solution(_ numbers:String) -> Int {
    var arr = Array(numbers)
    var num = ""
    var answer:[Int] = []
    var chkList: [Int] = Array(repeating: 0, count: arr.count)

    func isPrime(n: Int) -> Bool {
        guard n > 1 else { return false }
        guard n != 2 else { return true }

        var isPrime = true

        for i in 2...Int(sqrt(Double(n))) + 1 {
            if n % i == 0 {
                isPrime = false
                break
            }
        }

        return isPrime
    }

    func DFS(depth: Int, string: String, count: Int) {
        if depth == count {
            let number = Int(string)
            if isPrime(n: number!) && !answer.contains(number!) {
                answer.append(number!)
            }
        } else {
            for i in 0..<arr.count {
                if chkList[i] == 0 {
                    num += String(arr[i])
                    chkList[i] = 1
                    DFS(depth: depth + 1, string: num, count: count)
                    chkList[i] = 0
                    num = string
                }
            }
        }
    }

    for i in 1...arr.count {
        DFS(depth: 0, string: "", count: i)
    }

    return answer.count
}