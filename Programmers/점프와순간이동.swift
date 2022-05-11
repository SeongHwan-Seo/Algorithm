import Foundation

func solution(_ n:Int) -> Int 
{
    var ans:Int = 0
    var N = n
    
    while N != 0 {
        if N % 2 == 1 {
            ans += 1
        }
        N = N / 2
    }
    

    return ans
}