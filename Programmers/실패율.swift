import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    //실패율
    var fail:[Int : Float] = [:]
    for i in 1...N {
        //해당 스테이지 클리어 못한 참가자
        let a = stages.filter{$0 == i}.count
        //해당 스테이지 도전했던 참가자
        let b = stages.filter{$0 >= i}.count
        
        fail[i] = Float(a) / Float(b)
    }
    
    
    
    return fail.sorted(by: <).sorted(by: {$0.value > $1.value}).map{$0.key}
    
}