func solution(_ s:String) -> String {
    var arr = s.components(separatedBy: " ")
    var answer: [String] = []
    var tmp = 0
    
    for i in 0..<arr.count {
        tmp = 0
        for j in arr[i] {
            if tmp == 0 {
                answer.append(String(j.uppercased()))
            }
            else if tmp > 0 {
                answer.append(String(j.lowercased()))
            }
            tmp += 1
        }
        if i < arr.count - 1 {
            answer.append(" ")
        }
    }
    return answer.joined()
}