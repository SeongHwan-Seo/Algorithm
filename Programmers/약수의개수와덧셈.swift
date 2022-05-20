import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var dict: [Int : Int] = [:]
    var arr: [Int] = []

    for i in left...right {
        arr.append(i)
    }

    for i in 0..<arr.count {
        var count = 0
        for j in 1...arr[i] {
            if arr[i] % j == 0 { 
                count += 1
            }
        }
        dict[arr[i]] = count
    }

    let plus = dict.filter { $0.value % 2 == 0 }.keys.reduce(0, +)
    let minus = dict.filter { $0.value % 2 != 0 }.keys.reduce(0, +)
    return plus - minus
}