class SumOfMultiples {
  class func toLimit(limit:Int, inMultiples:[Int] = [3,5]) -> Int{
    var multiples = Set<Int>()
    var factors = inMultiples.filter {$0 != 0}
    
      for factor in factors {
        multiples = multiples.union(multiplesOf(factor, limit: limit))
      }
    
    return sumOfSet(multiples)
  }

  private class func multiplesOf(factor:Int, limit:Int) -> Set<Int>{
    var result = Set<Int>()
    for var multiple = factor; multiple < limit; multiple += factor {
      result.insert(multiple)
    }
    return result
  }
  
  private class func sumOfSet(set:Set<Int>) -> Int {
    return Array(set).reduce(0, combine: +)
  }
}