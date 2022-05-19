import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var dic:[String : [String]] = [:]
    var idList:[String: Int] = [:]
    var arr:[Int] = Array(repeating: 0, count: id_list.count)
    
    for (idx, id) in id_list.enumerated() {
        idList[id] = idx
    }
    
    for val in report {
        let arr = val.split(separator: " ").map{ String($0) }
        let a = arr[0] //신고한 사람
        let b = arr[1] //신고당한 사람
        if dic[b] == nil {
            dic.updateValue([a], forKey: b)
        } else {
            if !dic[b]!.contains(a){
                dic[b]!.append(a)
            }
        }
    }
    
    for b in dic.keys {
        if dic[b]!.count >= k {
            // print(b)
            // print(dic[b]!)
            // print(idList)
            for n in dic[b]! {
                // print("--")
                // print(n)
                arr[idList[n]!] += 1
            }
            
        }
    }
    return arr
}