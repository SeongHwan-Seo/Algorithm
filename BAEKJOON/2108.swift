import Foundation

let num = Int(readLine()!)!
var arr: [Int] = []
var dict: [Int : Int] = [:]
var mode = 0

//num 만큼 입력
for _ in 0..<num {
    let num = Int(readLine()!)!
    arr.append(num)
    dict[num, default: 0] += 1
    mode = mode < dict[num]! ? dict[num]! : mode
}

//산술평균
print(Int(round(Double(arr.reduce(0, +)) / Double(num))))

//중앙값
if num == 1 { 
    print(arr[0])
} else {
    arr.sort()
    print(arr[num / 2])
}

//최빈값
let filtered = dict.filter{ $0.value == mode}
let sorted = filtered.sorted{ $0.key < $1.key }

print(sorted[sorted.count > 1 ? 1 : 0].key)
//범위
print(arr.max()! - arr.min()!)