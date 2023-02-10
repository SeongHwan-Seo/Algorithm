import Foundation

func solution(_ book_time:[[String]]) -> Int {
    var sortedBookTime = book_time.sorted{ $0[0] < $1[0]}
    var room = [Int]()
    
    sortedBookTime.forEach { time in
        let tmp = time[0].split(separator: ":").map{ Int($0)! }
        
        let startTime = tmp[0] * 60 + tmp[1]
                            
        if let idx = room.firstIndex(where: { $0 <= startTime }) {
            room[idx] = getTime(time[1])
            
        } else { 
            room.append(getTime(time[1]))
        }
                        
    }
    
    return room.count
}

func getTime(_ s: String) -> Int {
    let time = s.split(separator: ":").map { Int($0)! }
    let si = time[0]
    let bun = time[1]
    
    return si * 60 + bun + 10
    
}