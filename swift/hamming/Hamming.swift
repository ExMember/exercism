class Hamming {
  class func compute(initial:String, against:String) -> Int? {
    if count(initial) != count(against) {
      return nil
    }

    var hammingDistance = 0

    for index in indices(initial) {
      if initial[index] != against[index] {
        hammingDistance++
      }
    }
    return hammingDistance
  }
}