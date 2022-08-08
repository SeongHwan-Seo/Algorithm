import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer: Int = 0
    var arr: [Int] = []
    
    for i in 0..<nums.count - 2 {
        for j in i + 1..<nums.count {
            for k in j + 1..<nums.count {
                arr.append(nums[i] + nums[j] + nums[k])
            }
        }
    }


    return arr.filter{ isPrime($0) }.count
}

func isPrime(_ n: Int) -> Bool {
    for i in 2..<n {
        if n % i == 0 {
           return false 
        }
    }
    return true
}