func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var result: Int = 0
    var cache: [String] = Array(repeating: "0", count: cacheSize)   // 크기가 cacheSize인 배열 만들기

    if cacheSize != 0 {
        // cache 안에 city가 있으면 result에 +1, 없으면 +5
        cities.forEach { city in
            if cache.contains(city.lowercased()) {
                result += 1
                cache.remove(at: cache.firstIndex(of: city.lowercased())!)  // 그 자리만 제거하기
            } else {
                result += 5
                cache.remove(at: cache.count-1) // 밀어버리기
            }
            cache.insert(city.lowercased(), at: 0)
        }
    } else {
        return cities.count * 5
    }

    return result
}