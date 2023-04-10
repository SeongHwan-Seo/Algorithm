import Foundation



while true {
    let str = readLine()!
    if str == "." { break }

    var stack = [Character]()
    var check = true

    for char in str {
        if char == "(" || char == "[" {
            stack.append(char)
        } else if char == ")" {
            if !stack.isEmpty && stack.last! == "(" {
                stack.removeLast()
            } else {
                check = false
                break
            }
        } else if char == "]" {
            if !stack.isEmpty && stack.last! == "[" {
                stack.removeLast()
            } else {
                check = false
                break
            } 
        }
    }
    
    print(stack.isEmpty && check ? "yes" : "no")
}