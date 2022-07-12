import Foundation

let number = readLine()!.map({ Int(String($0))! })
print(number.sorted(by: >).map({ String($0) }).joined())
