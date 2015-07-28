class SumOfMultiples {
  class func toLimit(limit:Int, inMultiples:[Int] = [3,5]) -> Int{
    var multiples = Set<Int>()
    
    for i in 1..<limit {
      for multiple in inMultiples {
        if (i % multiple) == 0 {
          multiples.insert(i)
        }
      }
    }
    return Array(multiples).reduce(0,combine:+)
  }
}