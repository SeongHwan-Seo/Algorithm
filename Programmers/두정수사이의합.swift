func solution(_ a:Int, _ b:Int) -> Int64 {
    let A = min(a, b)
    let B = max(a, b)
    var answer: [Int64] = []

    if A == B { return Int64(A) }
    else {
        for i in A...B {
            answer.append(Int64(i))
        }
    }

    return answer.reduce(0, +)
}