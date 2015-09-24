class Hamming {
  class func compute(initial:String, against:String) -> Int? {
    if initial.characters.count != against.characters.count {
      return nil
    }

    var hammingDistance = 0

    for index in initial.characters.indices {
      if initial[index] != against[index] {
        hammingDistance++
      }
    }
    return hammingDistance
  }
}