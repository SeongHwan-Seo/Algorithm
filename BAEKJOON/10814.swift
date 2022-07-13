import Foundation

struct person {
    let seq: Int
    let age: Int
    let name: String
}

var persons: [person] = []

let n = Int(readLine()!)!

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    persons.append(person(seq: persons.count + 1, age: Int(input[0]!), name: input[1]!))
}

persons.sort { (a, b) in
    if a.age == b.age {
        return a.seq < b.seq
    }
    return a.age < b.age
}

for i in persons {
    print(i.age, i.name)
}