import Foundation

var count = Int(readLine()!)!
var answer = readLine()!.split(separator: " ").map{ Int(String($0))!}

print(answer.min()!, answer.max()!)