import Foundation


let arr = readLine()!.split(separator: " ").map{ Int(String($0))!}

if(arr[0] == arr[1]) {
    print("==")
} else {
    print(arr[0] > arr [1] ? ">" : "<")
}