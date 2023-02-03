func solution(_ msg:String) -> [Int] {
    var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map { String($0) }
    var message = msg.map{ String($0) }
    var answer = [Int]()
    var input = ""
    
    
    while !message.isEmpty {
        input += message.removeFirst()
        
        guard let next = message.first else {
            answer.append(arr.firstIndex(of: input)! + 1)
            break
        }
        
        if let index = arr.firstIndex(of: input), !arr.contains(input + next) {
            arr.append(input + next)
            answer.append(index + 1)
            input = ""
        }
        
        
        
    }
    
    return answer
}