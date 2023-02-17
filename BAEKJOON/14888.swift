import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }
var operators = readLine()!.split(separator: " ").map{ Int($0)! }

var maxVal = Int.min
var minVal = Int.max

calculate(nums.first!, 1)
print(maxVal)
print(minVal)

func calculate(_ num:Int, _ idx: Int) {
    if n == idx {
        maxVal = max(maxVal, num)
        minVal = min(minVal, num)
        return
    }
    
    for i in 0..<4 {
        if operators[i] == 0 {
            continue
        }
        
        operators[i] -= 1
        
        var value = num
        switch i{
        case 0:
            value += nums[idx]
        case 1:
            value -= nums[idx]
        case 2:
            value *= nums[idx]
        case 3:
            value /= nums[idx]
        default:
            break
        }
        calculate(value, idx + 1)
        operators[i] += 1
        
    }
}
