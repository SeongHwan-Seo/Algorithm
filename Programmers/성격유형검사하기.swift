import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var dict: [Character : Int] = ["R" : 0, "T" : 0, "C" : 0, "F" : 0, 
                               "J" : 0, "M" : 0, "A" : 0, "N" : 0]
    for i in 0..<survey.count {
        let char: [Character] = Array(survey[i])
        
        if choices[i] < 4 {
            dict[char[0]]! += abs(4 - choices[i])
        } else {
            dict[char[1]]! += abs(4 - choices[i])
        }
    }
    
    let RT = dict["R"]! >= dict["T"]! ? "R" : "T"
    let CF = dict["C"]! >= dict["F"]! ? "C" : "F"
    let JM = dict["J"]! >= dict["M"]! ? "J" : "M"
    let AN = dict["A"]! >= dict["N"]! ? "A" : "N"
    
    return RT + CF + JM + AN
}