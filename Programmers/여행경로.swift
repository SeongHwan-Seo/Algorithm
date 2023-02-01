import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var answer = [String]()
    var visited = Array(repeating: false, count: tickets.count)
    let sortedTickets = tickets.sorted { $0[1] < $1[1] }
    
    
    func dfs(_ city: String) {
        if answer.count == tickets.count {
            answer.append(city)
            return
        }
        for i in 0..<tickets.count {
            if sortedTickets[i][0] == city && !visited[i] {
                visited[i] = true
                answer.append(city)
                dfs(sortedTickets[i][1])
                if answer.count == tickets.count + 1 {
                    return
                }
                answer.removeLast()
                visited[i] = false
            }
        }
    }
    
    dfs("ICN")
    
    return answer
}