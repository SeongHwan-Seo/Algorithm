import Foundation

func solution(_ s:String) -> Int{
    var result:[Character] = []
    var arr = Array(s)

    if arr.count % 2 != 0 { return 0}

    for i in 0..<arr.count {
        if !result.isEmpty && result.last == arr[i] {
            result.removeLast()
        } else {
            result.append(arr[i])
        }
    }


    return result.isEmpty ? 1 : 0
}