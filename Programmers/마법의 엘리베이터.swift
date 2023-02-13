import Foundation

func solution(_ storey:Int) -> Int {
    var answer = 0
    var arr = "\(storey)".map{Int(String($0))!}
    
    while arr.filter{ $0 == 0}.count != arr.count {
        var idx = arr.count - 1
        while arr[idx] == 0 && idx > 0 {
            idx -= 1
        }
        
        if arr[idx] > 5 { // 5보다 큰경우
            answer += 10 - arr[idx]
            arr[idx] = 0
            if idx > 0 {
                arr[idx-1] += 1
            } else {
                arr.insert(1, at: 0)
            }
        } else if arr[idx] < 5 { // 5보다 작은경우
            answer += arr[idx]
            arr[idx] = 0
        } else { // 5 인경우
            if idx-1 > 0 {
                if arr[idx-1] >= 5 {
                    answer += 10 - arr[idx]
                    arr[idx] = 0
                    arr[idx-1] += 1
                } else {
                    answer += arr[idx]
                    arr[idx] = 0
                }
            } else {
                answer += 5
                arr[idx] = 0
            }
        }
    }
    
    return answer
}