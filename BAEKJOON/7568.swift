import Foundation


struct person {
    let weight: Int
    let height: Int
    var rank: Int
}

let n = Int(readLine()!)!
var persons: [person] = []

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    persons.append(person(weight: input[0], height: input[1], rank: 1))
}

for i in 0..<n {
    
    for j in 0..<n {
        if persons[i].weight < persons[j].weight && persons[i].height < persons[j].height {
            persons[i].rank += 1
        }
    }
}

for k in 0..<n {
    print("\(persons[k].rank)", terminator: " " )
}

