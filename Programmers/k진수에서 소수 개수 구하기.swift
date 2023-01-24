import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var s = String(n, radix: k).split(separator: "0").map{ Int($0)! }.filter{ $0 != 1 }
    var result = 0
    
    s.forEach { num in
        var isPrime = true
        if (num < 4) {
            if num == 1 {
                isPrime = false
            }
            else {
                isPrime = true
            }
        }
        else {
            for i in 2...Int(sqrt(Double(num))) {
            if (num % i == 0) { 
                isPrime = false
                }
            }    
        }
        
        if isPrime { result += 1}
    }
    
    return result
    
}