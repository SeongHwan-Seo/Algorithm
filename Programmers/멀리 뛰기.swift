func solution(_ n:Int) -> Int64 {
    var arr = [0, 1, 2]
    
    if n == 1 { return 1 }
    if n == 2 { return 2 }
    
    for i in 3...n {
        arr.append((arr[i - 1] + arr[i - 2]) % 1234567)
    }
    
    return Int64(arr[n])
}