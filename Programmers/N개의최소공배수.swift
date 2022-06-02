func solution(_ arr:[Int]) -> Int {
    var answer: Int = 0
    var max = arr.max()!
    let mul = 1
    getLCM(answer: &answer, max: max, mul: mul, arr: arr)

    return answer



}

func getLCM(answer: inout Int, max: Int, mul: Int, arr: [Int]) {
    answer = max * mul
    for i in 0..<arr.count {
        if answer % arr[i] != 0 {
            let mul = mul + 1
            getLCM(answer: &answer, max: max, mul: mul, arr: arr)
        }
    }
}