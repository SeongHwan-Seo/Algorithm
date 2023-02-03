import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var dictWant = [String: Int]()
    var dictDiscount = [String:Int]()
    var answer = 0
    for i in 0..<want.count {
        dictWant[want[i]] = number[i]
    }
    for i in 0..<10 {
        let item = discount[i]
        let count = dictDiscount[item] ?? 0
        dictDiscount[item] = count + 1
    }
    
    func check() -> Bool {
        for want in dictWant {
            let item = want.key
            let count = want.value
            let discountValue = dictDiscount[item] ?? 0
            if discountValue < count {
                return false
            }
        }
        return true
    }
    
    if check() {
        answer += 1
    }
    for i in 10..<discount.count {
        let removeItem = discount[i-10]
        let addItem = discount[i]
        dictDiscount[removeItem] = (dictDiscount[removeItem] ?? 0) - 1
        dictDiscount[addItem] = (dictDiscount[addItem] ?? 0) + 1
        if check() {
            answer += 1
        }
    }
    
    
    return answer
}