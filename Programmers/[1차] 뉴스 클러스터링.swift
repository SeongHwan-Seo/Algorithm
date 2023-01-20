func solution(_ str1:String, _ str2:String) -> Int {
    let str1Arr = str1.map { $0 }
    let str2Arr = str2.map { $0 }
    
    var arr1 = [String]()
    var arr2 = [String]()
    
    for i in 0..<str1Arr.count - 1 {
        if str1Arr[i].isLetter && str1Arr[i + 1].isLetter {
            arr1.append("\(str1Arr[i].uppercased())\(str1Arr[i + 1].uppercased())")
        }
    }
    
    for i in 0..<str2Arr.count - 1 {
        if str2Arr[i].isLetter && str2Arr[i + 1].isLetter {
            arr2.append("\(str2Arr[i].uppercased())\(str2Arr[i + 1].uppercased())")
        }
    }
    
    //합집합
    var allCount = arr1.count + arr2.count
    //교집합
    var count = 0
    
    for i in 0..<arr1.count {
        for j in 0..<arr2.count {
            if arr1[i] == arr2[j] {
                count += 1
                arr2.remove(at: j)
                break
            }
        }
    }
    
    allCount = allCount - count
    
    if allCount == 0 {
        return 65536
    } else if count == 0 {
        return 0
    } else {
        return Int(Double(count) / Double(allCount) * 65536)
    }
    
    
}