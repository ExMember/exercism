class SumOfMultiples {
  class func toLimit(_ limit:Int, inMultiples:[Int] = [3,5]) -> Int{
    var multiples = Set<Int>()
    let factors = inMultiples.filter {$0 != 0}
    
      for factor in factors {
        multiples = multiples.union(multiplesOf(factor, limit: limit))
      }
    
    return sumOfSet(multiples)
  }

  fileprivate class func multiplesOf(_ factor:Int, limit:Int) -> Set<Int>{
    var result = Set<Int>()
    var multiple = factor
    while multiple < limit {
      result.insert(multiple)
      multiple += factor
    }
//    for var multiple = factor; multiple < limit; multiple += factor {
//      result.insert(multiple)
//    }
    return result
  }
  
  fileprivate class func sumOfSet(_ set:Set<Int>) -> Int {
    return Array(set).reduce(0, +)
  }
}
