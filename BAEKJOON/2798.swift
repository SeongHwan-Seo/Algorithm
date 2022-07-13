import Foundation

let n = readLine()!.split(separator: " ").map { Int(String($0))! }
let x = n[0]
let y = n[1]
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

func blackJack(_ x: Int, _ y: Int, _ arr: [Int]) -> Int {
    var max: Int = 0

    for i in 0..<x {
        for j in i + 1..<x {
            for z in j + 1..<x {
                let sum = arr[i] + arr[j] + arr[z]
                if y - sum == 0 {
                    max = sum
                    return max
                } else if y - sum < 0 {
                    continue
                } else if y - sum > 0 {
                    if max < sum {
                        max = sum
                    }
                }
            }
        }
    }
    return max
}

print(blackJack(x, y, arr))





