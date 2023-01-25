import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var answer = [Int]()
    var maxTime = 23 * 60 + 59
    var carInfo = [String : (time: Int, state: String)]()
    
    records.forEach {
        let recArr = $0.components(separatedBy: " ")
        var time = { () -> Int in
            var info = recArr[0].components(separatedBy: ":")
            var h = Int(info[0])!
            var m = Int(info[1])!
            return h * 60 + m
        }()
        var carNum = recArr[1]
        var carState = recArr[2]
        if carInfo[carNum] == nil {
            carInfo[carNum] = (time: time, state: carState)
        } else {
            carInfo[carNum]! = (time: time - carInfo[carNum]!.time, state: carState)
        }
    }
    
    var sortedCarInfo = carInfo.sorted{ $0.key < $1.key}
    
    
    sortedCarInfo.forEach {
        var car = $0
        if car.value.state == "IN" {
            car.value.time = maxTime - car.value.time
        }
        var parkingTime: Float = Float(car.value.time) - Float(fees[0])
        if parkingTime <= 0 {
            answer.append(fees[1])
        } else {
            var finalTime = Int(ceil(parkingTime / Float(fees[2])))
            answer.append(fees[1] + finalTime * fees[3])
        }
        
    }
    
    return answer
}